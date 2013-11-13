#
# Cookbook Name:: xm-demo-cookbook
# Recipe:: webserver
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


# install the IIS-WebServerRole

%w[IIS-WebServerRole NetFx3 IIS-ISAPIFilter IIS-ISAPIExtensions IIS-NetFxExtensibility IIS-ASPNET].each do |feature|
  windows_feature feature do
    action :install
    notifies :request, 'windows_reboot[15]'
  end
end

# Install framework 4.5

include_recipe "ms_dotnet45"

# Create the webroot and the log root

directory node[:xm_demo][:web_root]
directory node[:xm_demo][:log_root]

# Reboot handler. Lets us reboot when we need to.

windows_reboot 15 do
  reason 'Web server installation'
  action :nothing
end