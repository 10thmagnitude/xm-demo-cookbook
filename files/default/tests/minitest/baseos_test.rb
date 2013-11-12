require File.expand_path('../support/helpers', __FILE__)

include Helpers::Xm_demo_cookbook

class GroupTest < MiniTest::Unit::TestCase
  
  def guest_group_exists
    assert Group.exist?('Guests')
  end
end