# -*- encoding : utf-8 -*-
def prompt()
  print "> "
end

def gold_room()
  puts "This room is full of gold. How much do you take?"

  prompt; next_move = gets.chomp
  # siempre que el numero incluya un 0 o un 1 seguimos, sino pasamos al else (no sabes escribir)
  if next_move.include? "0" or next_move.include? "1"
    how_much = next_move.to_i()
  else
     dead("Man, learn to type a number.")
  end
# si el numero contenia un 0 o un 1, ahora vemos si es menor de 50
  if how_much < 50
     puts "Nice, you're not greedy, you win!"
     Process.exit(0)# final del juego
  else
     dead ("You greedy bastard!")
  end
end


def bear_room()
   puts "There is a bear here."
   puts "The bear has a bunch of honey."
   puts "The fat bear is in front of another door"
   puts "How are you going to move the bear?"
   bear_moved = false # empieza con valor false

   while true
       prompt; next_move = gets.chomp

       if next_move == "take honey"
          dead("The bear looks at you then slaps your face off.")
       elsif next_move == "taunt bear" and not bear_moved #not false= true, asi hacemos que antes de poder hacer nada con el oso sea necesiario el insultarle
           puts "The bear has moved from the door. You can go through it now."
           bear_moved = true
       elsif next_move == "taunt bear" and bear_moved # false
           dead("The bear gets pissed off and chews your leg off.")
       elsif next_move == "open door" and bear_moved # si no hemos primero cambiado el valor de bear_moved no podemos entrar.
           gold_room()
       else
           puts "I got no idea what that means."
        end
    end
end

def cthulhu_room()
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  prompt; next_move = gets.chomp

  if next_move.include? "flee"
     start()# volvemos al inicio (a la funcion start que escribimos al final)
  elsif next_move.include? "head"
     dead("Well that was tasty!")
  else
     cthulhu_room()
  end
end

def dead(why)
   puts "#{why} Good job!"
   Process.exit(0) # salimos del programa
end

def start()
   puts "You are in a dark room."
   puts "There is a door to your right and left."
   puts "Which one do you take?"

   prompt; next_move = gets.chomp

   if next_move == "left"
      bear_room()
   elsif next_move == "right"
      cthulhu_room()
   else
      dead("You stumble around the room until you starve.")
   end
end

start()# comenzamos con la funcion start
t

t
