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

    def check_in(guest)
        return @guests << guest
    end

    def check_out(guest)
        return @guests.delete(guest)
    end

    def add_songs(song)
        return @playlist << song
    end

end