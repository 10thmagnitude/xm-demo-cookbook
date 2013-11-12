#
# Cookbook Name:: xm-demo-cookbook
# Attributes:: default
#
# Copyright 2012-2013, SecondMarket Labs, LLC
# Copyright 2013, Opscode, Inc.
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

default[:xm_demo][:administrator] = "xmadmin"
default[:xm_demo][:admin_password] = node[:windows_users][:admin_password]
default[:xm_demo][:apppool_user] = "xm-demo-pool"
default[:xm_demo][:apppool_password] = node[:windows_users][:apppool_password]
default[:xm_demo][:web_root] = "c:/webroot/xm-demo"