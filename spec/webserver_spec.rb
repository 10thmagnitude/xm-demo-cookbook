require 'chef/config'
require 'spec_helper'

expect(chef_run).to include_recipe('windows::default')

describe 'xm-demo-cookbook::webserver' do
  let (:chef_run) do
    runner = ChefSpec::Runner.new(
      'platform' => 'windows',
      'version' => '2008R2'
      )
    runner.converge('xm-demo-cookbook::webserver')
  end

  it 'should install the IIS role' do
    expect(chef_run).to install_feature('IIS-WebServerRole')
  end
end