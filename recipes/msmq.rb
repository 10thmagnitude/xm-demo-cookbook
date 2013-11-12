#
# Cookbook Name:: xm-demo-cookbook
# Recipe:: msmq
#
# Copyright (C) 2013 10th Magnitude
# 
# All rights reserved - Do Not Redistribute
#


# install MSMQ service

windows_feature 'MSMQ-Server' do
  action :install
  notifies :request, 'windows_reboot[15]'
end

# Reboot handler. Lets us reboot when we need to.

windows_reboot 15 do
  reason 'snmp installation'
  action :nothing
end