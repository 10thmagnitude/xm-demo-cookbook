require File.expand_path('../support/helpers', __FILE__)

describe 'xm-demo-cookbook::default' do

  include Helpers::Xm_demo_cookbook

  
  it "doesn't do anything yet" do
    #put a test in here
  end

end

describe "IIS" do
  it "should have the web server service running" do
    service("W3SVC").must_be_running
  end
end

describe "Base OS" do
  it "should have the SNMP server service running" do
    service("SNMP").must_be_running
  end
end