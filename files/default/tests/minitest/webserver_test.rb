require File.expand_path('../support/helpers', __FILE__)
include Helpers::Xm_demo_cookbook

describe_recipe 'xm-demo-cookbook::webserver' do

  it 'runs as a service' do
    service('W3SVC').must_be_running
  end
  
  it 'creates the webroot directory' do
    directory(node[:xm_demo][:web_root]).must_exist
  end
  
  it 'creates the log directory' do
    directory(node[:xm_demo][:log_root]).must_exist
    

end

class NETFrameworkVersions < MiniTest::Unit::TestCase 
  
  def test_351_framework_installed
      framework351Version = Registry.get_value("HKLM\\SOFTWARE\\Microsoft\\NET Framework Setup\\NDP\\v3.5","SP")
      assert_equal 1, framework351Version
  end
  def test_45_framework_installed
    framework45Version = Registry.get_value("HKLM\\SOFTWARE\\Microsoft\\NET Framework Setup\\NDP\\v4\\Full","Release")
    assert_equal 378389, framework45Version
  end

end