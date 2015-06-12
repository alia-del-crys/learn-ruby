# -*- encoding : utf-8 -*-
class Song
    def initialize(lyrics)
        @lyrics = lyrics
    end
    def sing()
      @lyrics.each{|line| puts line }
    end
end

cumple = ["Cumpleaños feliz",
          "Cumpleaños feliz",
          "Te deseamos todos",
          "Cumpleaños feliz"]

feliz = Song.new(cumple)

feliz.sing()

