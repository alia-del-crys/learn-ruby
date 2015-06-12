# -*- encoding : utf-8 -*-
ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there's not 10 things in that list, let's fix that."

stuff = ten_things.split(' ') # aqui definimos una nueva lista que contendra los elementos de ten_things, pero separados entre ''
more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy)

while stuff.length != 10 # mientras el numero de elementos de stuff sea distinto a 10, seguimos en linea 11
  next_one = more_stuff.pop() # next_one es igual al ultimo elemento de more_stuff
  puts "Adding: #{next_one}"
  stuff.push(next_one) # añadiremos lo que contiene next_one
  puts "There's #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1] #ponemos el numero 1 de la lista de stuff (tener en cuenta que existe el 0)
puts stuff[-1] # whoa! fancy, pondra el ultimo elemento de la lista
puts stuff.pop() # pondra el ultimo elemento de la lista
puts stuff.join(' ') # what? cool! unira los elementos que llevan ''
puts stuff.values_at(3,5).join('#') # super stellar! une con # los elementos 3#5 de la lista
sta
