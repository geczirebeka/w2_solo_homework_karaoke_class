require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../rooms.rb')
require_relative('../songs.rb')
require_relative('../guests.rb')


class TestRooms < Minitest::Test
    
    def setup()
        @rooms = Rooms.new("Jazz Room", [@jazz, @blues])
        @jazz = Songs.new("Blues night")
        @blues = Songs.new("Tomorrow")

        @guest1 = Guests.new("George", 40)
        @guest2 = Guests.new("Sarah", 60)
    end


    def test_room_has_name
        assert_equal("Jazz Room", @rooms.name())
    end

    def test_room_has_songs()
        assert_equal(2, @rooms.count_songs())
    end

end