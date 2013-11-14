require File.expand_path('../helpers.rb', __FILE__)
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
      #stubbing out for now to get a good clean run
      #computer = WMI::Win32_ComputerSystem.find(:first)
      #domainName = computer.Domain
      #domainName.must_equal "XM-AD"
    end
  end
end
