class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        # new_song.name = song_name (repetitive)
        self.add_song(new_song)
    end

    def self.song_count
        Song.all.length
    end


end