# -*- encoding : utf-8 -*-
def prompt
   print "> "
end

puts "hola fernando. Vamos a ver como vas de motivacion. Entras en tu casa y Estibaliz esta cocinando unas deliciosas magdalenas. Elige una opcion:
#1: te lanzas a compartir un momento dulce con tu mujer.
#2: decides ir primero al gimnasio, y asi gastar tu futuro consumo."

prompt; opcion=gets.chomp

if opcion == "1"
   puts "vas a la cocina "
   puts "1. Las coges sin preguntar."
   puts "2. Primero buscas a Estibaliz que no esta ya en la cocina."

  prompt; magdalenas = gets.chomp
  
  if magdalenas == "1"
  puts "te quemas los dedos. Sueltas un gritito, aparece Estibaliz y te regaña."
  elsif magdalenas == "2"
  puts "La encuentras en la cama. 'Las magdalenas todavia no estan, porque no vamos primero a la piscina 1 o dar un paseo 2'. "
   
prompt; esti =gets.chomp
     
     if esti == "1"
     puts " Chapoteais en la piscina. Luego os meteis en la sauna. Al subir haces una cena ligera y comeis despues las magdalenas mientras veis Star Trek. dia redondo!!"
     elsif esti == "2"
     puts "Os vais a dar una vuelta por el  parque. Hace una noche preciosa, con una enorme luna llena. Os poneis romanticos, y al llegar a casa tienes doble postre. Bien hecho!"
     end

  else
  puts "Huyes de unas magdalenas?? Fer, necesitas tomarte las cosas con calma.Ya te has metido a engancharte al ordenador?! Fernando, socializa!!."
  end



elsif opcion == "2"
  puts "Bajas y el gimnasio esta vacio."
  puts "1. Pesas y eliptica."
  puts "2. Llamar a dani."


  prompt; ejercicio = gets.chomp
 
  if ejercicio == "1" 
   puts "Te pasas 1 hora y media haciendo ejercicio. Cuando subes ya no quedan magdalenas. Rocio aparecio, y se las han comido entre las dos. Mala suerte!!"
  elsif ejercicio == "2"
   puts "Dani te pone a hacer ejercico en modo Conan. En mitad aparece Rocio y la pone a hacer abdominales como si no hubiera mañana. Al terminar subes y compartis los cuatro las magdalenas. Solo consigues comerte una, pero algo es algo... "
  end

else
 puts "Ya te has metido a engancharte al ordenador?! Fernando, socializa!!."
end
d

d
