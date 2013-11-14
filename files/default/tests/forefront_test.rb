require File.expand_path('../helpers.rb', __FILE__)
include Helpers::Xm_demo_cookbook

describe_recipe 'xm-demo-cookbook::forefront' do
  
  it 'checks for ForeFront Installation' do
    Registry.get_value("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Microsoft Security Client","DisplayName").must_equal 'Microsoft Forefront Endpoint Protection'
  end
  
end