require File.expand_path('../helpers.rb', __FILE__)
include Helpers::Xm_demo_cookbook

describe_recipe 'xm-demo-cookbook::msmq' do
  
  describe 'MSMQ Configuration' do

    it 'runs as a service' do
      service('MSMQ').must_be_running
    end
  
  end
  
end