# -*- encoding : utf-8 -*-
require 'colorize'

class Room
  attr_accessor :options

  def initialize(text, options = {} )
    @text = text
    @options = options
  end

  def enter
    puts @text
    unless @options.empty?
      @options.each do |move,room|
        puts move
      end

      prompt()
      next_room = gets.chomp()

      if @options[next_room]
        @options[next_room].enter
      else
        printf "¡Aprende a escribir!\n".red
      end
    end
  end

  def prompt
    printf "¿Qué eliges?".yellow
  end

end

entrada = Room.new("Estás en la antesala de una oscura mazmorra, ves dos puertas, cada una con un letrero:")

izquierda = Room.new("Ves dos objetos:")
derecha = Room.new("Oso!")

entrada.options= { "I" => izquierda, 'D'=> derecha }

entrada.enter


r


