require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../rooms.rb')

class TestRooms < Minitest::Test
    
    def setup()
    end

end