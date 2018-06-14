#test/test_helper.rb
require './lib/resin_wrapper'
require 'minitest/autorun'
require 'webmock/minitest'
require 'vcr'
require 'byebug'

VCR.configure do |c|
  c.cassette_library_dir = "test/fixtures"
  c.hook_into :webmock
end