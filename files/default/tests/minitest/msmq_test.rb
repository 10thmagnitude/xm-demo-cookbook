require 'chef' 
require "minitest/autorun" 
require 'win32/registry' 
require 'ruby-wmi'


class RegistryTest < MiniTest::Unit::TestCase 
  
  def test_framework_installed
      frameworkVersion = Registry.get_value("HKLM\\SOFTWARE\\Microsoft\\NET Framework Setup\\NDP\\v3.5","SP")
      assert_equal 1, frameworkVersion
  end

end