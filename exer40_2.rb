class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end
  
  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end
  
  def sing_me_first_line()
    puts @lyrics[0].inspect    
  end
end

lyrics_bday = ["Happy birthday to you",
              "I don't want to get sued",
              "So I'll stop right there"]

happy_bday = Song.new(lyrics_bday)

            
lyrics_bull = ["They rally around the family",
                "Will pockets full of shells"]
         
bulls_on_parade = Song.new(lyrics_bull)

            
happy_bday.sing_me_a_song
happy_bday.sing_me_first_line

bulls_on_parade.sing_me_a_song