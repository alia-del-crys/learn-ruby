# -*- encoding : utf-8 -*-
#!/usr/bin/env ruby

class Option
  attr_accessor :number, :text, :result
  def initialize(number,text,result=nil)
    @number = number
    @text = text
    @esrult = result # @esrult? no copies las cosas malas de tu maestro
  end
end

class Adventure
  attr_accesor :options

  def initialize(options)
    @options = options
  end

  def start
    while @options do # Ojo! piensa en algo que se acabe eventualmente, como while @options.pop si es un Array

    end
  end
end

options = [
# tal como has definido arriba initialize, en la siguiente linea te falta el 'number' antes del 'text'
Option.new("Entras en tu casa y Estibaliz esta cocinando unas deliciosas magdalenas.")
]

] # esta llave esta sola y triste
ste
