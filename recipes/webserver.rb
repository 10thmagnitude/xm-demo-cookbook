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
end