#
# Cookbook Name:: xm-demo-cookbook
# Recipe:: webserver
#
# Copyright (C) 2013 10th Magnitude
# 
# All rights reserved - Do Not Redistribute
#


# install the IIS-WebServerRole

windows_feature 'IIS-WebServerRole' do
  action :install
  notifies :request, 'windows_reboot[15]'
end

# install .NET Framework 3.5.1
windows_feature 'NetFx3' do
  action :install
  notifies :request, 'windows_reboot[15]'
end

# Add ASP.NET support
# need to install these first - do later IIS-ISAPIFilter, IIS-ISAPIExtensions, IIS-NetFxExtensibility
windows_feature 'IIS-ASPNET' do
  action :install
  notifies :request, 'windows_reboot[15]'
end 

# Reboot handler. Lets us reboot when we need to.

windows_reboot 15 do
  reason 'Web server installation'
  action :nothing
end