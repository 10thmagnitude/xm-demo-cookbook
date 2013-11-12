require File.expand_path('../support/helpers', __FILE__)



describe 'xm-demo-cookbook::baseos' do
  
  include Helpers::Xm_demo_cookbook
  
  

  describe 'users and groups' do
    it "makes sure vagrant is an admin" do
      group("Administrators").must_include('vagrant')  
    end
  end
  
  describe 'standard services' do
    it "makes sure core file services are installed" do
      service("LanmanServer").must_be_running
    end
  end

end