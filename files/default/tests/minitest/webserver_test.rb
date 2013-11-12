require 'minitest/spec'

describe_recipe 'xm-demo-cookbook::webserver' do

  it 'runs as a service' do
    service('W3SVC').must_be_running
  end

end