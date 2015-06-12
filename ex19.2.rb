# -*- encoding : utf-8 -*-
def ejercicio_y_dieta(ejercicio, dieta)
  puts "Si haces #{ejercicio} minutos pierdes peso!"
  puts "Si comes #{dieta} caloria pierdes peso!"
  puts "Si haces ambas conseguiras adelgazar"
end

puts "Por ejemplo:"
ejercicio_y_dieta(30, 2000)
puts # a blank line

puts "Pero si haces:"
total_ejercicio = 45
total_calorias = 1800
ejercicio_y_dieta(total_ejercicio, total_calorias)
puts "Perderas mas"
puts # a blank line

puts "pero si hicieras:"
ejercicio_y_dieta(120, 1500)
puts "Pero no lo mantendras y seras un yoyo"
puts # a blank line

puts "Es mejor:"
ejercicio_y_dieta(total_ejercicio + 15, total_calorias + 200)
puts # a blank line

puts "Si es a largo plazo es mejor:"
ejercicio_y_dieta(60 + 15, 300 * 7.5)
puts # a blank line

puts "Si es a corto plazo"
ejercicio1 = 60 + 30
dieta1 = 2000 - 500
ejercicio_y_dieta(ejercicio1, dieta1)
puts # a blank line

puts "Si va a ser permanente"
ejercicio1 = 60
ejercicio2 = 30
dieta1 = 1500
dieta2 = 600
ejercicio_y_dieta(ejercicio1 + ejercicio2, dieta1 + dieta2)
puts # a blank line

e


e

