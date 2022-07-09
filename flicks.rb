class Movie
    attr_reader :title, :rank
    attr_writer :title

    def initialize(title, rank=0)
        @title = title.capitalize
        @rank = rank
    end

    def normalized_rank
        @rank / 100.0
    end

    def thumbs_up
        @rank += 1
    end
    
    def thumbs_down
        @rank -= 1
    end

    def to_s
        "#{@title} has a rank of #{normalized_rank}"
    end
end

movie1 = Movie.new("goonies", 200)
movie2 = Movie.new("avatar", 300)
movie3 = Movie.new("godfinger", 400)

movies = [movie1, movie2, movie3]

puts movies

movies.each do |movie|
    movie.thumbs_up
    puts movie
end