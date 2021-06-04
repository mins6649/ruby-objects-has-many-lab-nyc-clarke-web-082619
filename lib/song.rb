class Song

    @@all = []

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    
        @@all << self
    end

    def artist_name
        artist.name if artist
    end

    def self.all
        @@all
    end

end