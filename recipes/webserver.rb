#
# Cookbook Name:: xm-demo-cookbook
# Recipe:: webserver
#
# Copyright (C) 2013 10th Magnitude
# 
# All rights reserved - Do Not Redistribute
#


# install the IIS-WebServerRole

%w[IIS-WebServerRole NetFx3 IIS-ISAPIFilter IIS-ISAPIExtensionsIIS-NetFxExtensibility IIS-ASPNET].each do |feature|
  windows_feature feature do
    action :install
    notifies :request, 'windows_reboot[15]'
  end
end

# Reboot handler. Lets us reboot when we need to.

windows_reboot 15 do
  reason 'Web server installation'
  action :nothing
end