require File.expand_path('../support/helpers', __FILE__)

describe 'xm-demo-cookbook::webserver' do

  include Helpers::Xm_demo_cookbook
      
  describe "IIS" do
    it "should have the web server service running" do
      service("W3SVC").must_be_running
    end
  end

end
