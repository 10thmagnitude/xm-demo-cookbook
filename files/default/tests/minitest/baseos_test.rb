require File.expand_path('../support/helpers', __FILE__)
include Helpers::Xm_demo_cookbook


describe_recipe 'xm-demo-cookbook::baseos' do
  
  describe 'users and groups' do
    it "makes sure vagrant is an admin" do
      group("Administrators").must_include('vagrant')  
    end
  end
  
  describe 'standard services' do
    it "makes sure core file services are running" do
      service("LanmanServer").must_be_running
    end
    it 'makes sure SNMP service is running' do
      service("SNMP").must_be_running
    end
  end
  
  describe 'configuration' do
    it 'joins the domain' do
      # something to check the domain status of the machine
    end
  end
end
  
class DomainJoinTest < MiniTest::Unit::TestCase 

  def domainJoined
      computer = WMI::Win32_ComputerSystem.find(:first)
      domainName = computer.Domain
      assert_equal "XM-AD", domainName
     # computer = WMI::Win32_ComputerSystem.find(:all)

      #computer.each do |computer|
       #computer.properties_.each do |p|
        #  puts "#{p.name}: #{computer[p.name]}"
        #end
      #end
      
  end
end

# domain check fun
# Set OpSysSet = GetObject("winmgmts:\root\cimv2").ExecQuery("select * from Win32_ComputerSystem")
# GetComputerDomain = i.Domain
# So in theory, the Win32_ComputerSystem.Domain propery is what we want
# in Ruby, this looks like
# domain = WMI::Win32_ComputerSystem.Domain

#WMI::Win32_ComputerSystem.find(:first)


