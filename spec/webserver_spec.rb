require 'chef/config'
require 'spec_helper'

describe 'xm-demo-cookbook::webserver' do
  let (:chef_run) do
    runner = ChefSpec::Runner.new(
      'platform' => 'windows',
      'version' => '2008R2'
      )
    runner.converge('xm-demo-cookbook::webserver')
  end

  it 'should start a service called W3SVC' do
    expect(chef_run).to start_service('W3SVC')
    expect(chef_run).to set_service_to_start_on_boot('W3SVC')
  end
end