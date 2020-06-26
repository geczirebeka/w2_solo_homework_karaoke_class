require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../songs.rb')

class TestSongs < Minitest::Test

    def setup()
    end
end