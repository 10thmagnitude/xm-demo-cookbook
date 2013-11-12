#
# Cookbook Name:: xm-demo-cookbook
# Recipe:: baseos
#
# Copyright (C) 2013 10th Magnitude
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Make sure file services are installed. They should be there by default, but we make sure they haven't been removed

windows_feature 'CoreFileServer' do
  action :install
  notifies :request, 'windows_reboot[15]'
end

# install SNMP

windows_feature 'SNMP' do
  action :install
  notifies :request, 'windows_reboot[15]'
end

# Reboot handler. Lets us reboot when we need to.

windows_reboot 15 do
  reason 'snmp installation'
  action :nothing
end