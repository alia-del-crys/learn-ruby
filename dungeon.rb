require 'highline/import'

class Room
  @@rooms = nil
  attr_accessor :options

  def initialize(name, description)
    @name = name
    @description = description
    if @@rooms
      @@rooms[@name] = self
    else
      @@rooms = {@name => self}
      @@first = name
    end
  end

  def self.find(name)
    @@rooms[name]
  end

  def self.first
    @@first
  end

  def visit(from_adventure)
    say(@description)
    choose do |menu|
      @options.each do |option|
        menu.choice(option.name) {
          option.result.call(from_adventure)
      }
      end
    end
  end
end

class Option < Struct.new(:name, :result)
end

class Adventure

  def start
    @name = ask("Tell me hero what is your name?", String)
    say "From this day you will be remembered as <%= color('#{@name}', BLUE)%> the Dauntless"
    if agree "Are you ready to enter the <%= color('Doomed Dungeon of Doom', RED) %>?"
      say "Lets begin!"
      visit Room.first
    else
      say "So much for the spirit of adventure!"
    end
  end

  def visit(name)
    room = Room.find(name)
    if room
      room and room.visit(self)
    else
      say("#{@name} got lost and was never ever heard of again")
      exit
    end
  end

  def protagonist
    @name
  end

  def add_room(name, description, options)
    new_room = Room.new(name, description)
    new_room.options = options.map do |option|
      Option.new(option[:text], option[:result])
    end
  end

end

adventure = Adventure.new

adventure.add_room(
  'Entrance',
   "A Stony hall, gloomy and full of webs, you have a dark stair flight sinking into the darkness... ",
   [
    {
      text: 'Go back', result: ->(quest) {
        say "And #{quest.protagonist}'s name faded and was forgotten" and exit
      }
    },
    { text: 'Descent',
      result: -> (quest) {
      say "You go down hearing the echo of every step, air becomes increasingly cold and humid."
      quest.visit 'Hall of armours'
      }
    }
  ]
)


adventure.start
