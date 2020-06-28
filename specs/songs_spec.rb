require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../songs.rb')

class TestSongs < Minitest::Test

    def setup()
        @jazz = Songs.new("Blues night")
        @blues = Songs.new("Tomorrow")
    end

    def test_songs_have_name()
        assert_equal("Tomorrow", @blues.name())
    end
end