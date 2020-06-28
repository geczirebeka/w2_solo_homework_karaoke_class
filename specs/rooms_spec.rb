require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../rooms.rb')
require_relative('../songs.rb')
require_relative('../guests.rb')


class TestRooms < Minitest::Test
    
    def setup()
        @rooms = Rooms.new("Jazz Room")

        @guest1 = Guests.new("George", 40)
        @guest2 = Guests.new("Sarah", 60)

        @jazz = Songs.new("Blues night", "Jazz")
        @blues = Songs.new("Tomorrow", "Blues")
    end


    def test_room_has_name
        assert_equal("Jazz Room", @rooms.name())
    end

    def test_room_has_songs()
        assert_equal(0, @rooms.count_songs())
    end

    def test_room_has_guests()
        assert_equal(0, @rooms.count_guests())
    end

    def test_check_in_guest()
        @rooms.check_in(@guest1)
        assert_equal([@guest1], @rooms.guests())
    end

    def test_check_out_guest()
        @rooms.check_in(@guest1)
        @rooms.check_in(@guest2)
        @rooms.check_out(@guest1)
        assert_equal(1, @rooms.count_guests())
    end

    def test_can_add_songs_()
        @rooms.add_songs(@jazz)
        assert_equal([@jazz], @rooms.playlist())
    end

end