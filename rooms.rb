class Rooms

    attr_reader :name
    attr_accessor :playlist, :guests

    def initialize(name)
        @name = name
        @playlist = []
        @guests = []
    end

    def count_songs()
        return @playlist.count
    end

    def count_guests()
        return @guests.count
    end

end