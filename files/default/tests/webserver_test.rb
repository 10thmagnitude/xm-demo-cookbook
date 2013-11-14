require File.expand_path('../helpers.rb', __FILE__)
include Helpers::Xm_demo_cookbook

describe_recipe 'xm-demo-cookbook::webserver' do
  
  describe 'IIS Configuration' do

    it 'runs as a service' do
      service('W3SVC').must_be_running
    end
  
  end
  
  describe 'Website Configuration' do
    
    it 'creates the webroot directory' do
      directory(node[:xm_demo][:web_root]).must_exist
    end
  
    it 'creates the log directory' do
      directory(node[:xm_demo][:log_root]).must_exist
    end
  
    it "runs as node[:xm_demo][:apppool_user]" do
      #check for node[:xm_demo][:apppool_user] as app pool user
    end
  end
  
    describe '.NET Framework Tests' do
  
    it 'checks for framework 3.5.1' do
      framework351Version = Registry.get_value("HKLM\\SOFTWARE\\Microsoft\\NET Framework Setup\\NDP\\v3.5","SP")
      framework351Version.must_equal 1
    end
  
    it 'checks for framework 4.5' do
      Registry.get_value("HKLM\\SOFTWARE\\Microsoft\\NET Framework Setup\\NDP\\v4\\Full","Release").must_equal 378389
    end
  
  end

end