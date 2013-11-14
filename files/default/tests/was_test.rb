require File.expand_path('../helpers.rb', __FILE__)
include Helpers::Xm_demo_cookbook

describe_recipe 'xm-demo-cookbook::was' do
  
  describe 'Windows Process Activation Configuration' do

    it 'runs as a service' do
      service('WAS').must_be_running
    end
  
  end
  
end