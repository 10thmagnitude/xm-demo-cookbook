require File.expand_path('../support/helpers', __FILE__)
include Helpers::Xm_demo_cookbook

class DomainJoinTest < MiniTest::Unit::TestCase 

  def domainJoined
      computer = WMI::Win32_ComputerSystem.find(:first)
      domainName = computer.Domain
      puts('I did something')
      assert_equal "XM-AD", domainName
  end
end