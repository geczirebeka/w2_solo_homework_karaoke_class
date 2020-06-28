class Rooms

    attr_reader :name
    attr_accessor :songs

    def initialize(name, songs)
        @name = name
        @songs = songs
        @guests = []
    end

    def count_songs()
        return @songs.count
    end

end