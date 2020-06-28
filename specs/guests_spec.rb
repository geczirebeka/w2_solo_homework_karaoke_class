require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guests.rb')

class TestGuests < Minitest::Test

    def setup()
        @guest1 = Guests.new("George", 40)
        @guest2 = Guests.new("Sarah", 60)
    end

    def test_guests_have_name()
        assert_equal("Sarah", @guest2.name())
    end




end