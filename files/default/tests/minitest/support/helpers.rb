module Helpers
  module Xm_demo_cookbook
    include MiniTest::Chef::Assertions
    include MiniTest::Chef::Context
    include MiniTest::Chef::Resources
    require 'minitest/spec'
    require 'minitest/pride'
    require 'chef' 
    require "minitest/autorun" 
    require 'win32/registry' 
    require 'ruby-wmi'
  end
end


