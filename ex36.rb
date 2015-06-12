# -*- encoding : utf-8 -*-
def prompt()
  print "> "
end

def conteo (habitaciones)
#funcion que va a guardar las habitaciones
habitaciones = 0
end



def centro_comercial()
puts "Entras en un centro comercial para hacer una entrevista de trabajo en una zapateria."
puts "A la izquierda ves tiendas de ropa, a la derecha un par de cafeterias y enfrente las escaleras mecanicas."
chica = false

   while  true
   prompt; movimento = gets.chomp
       
      if movimiento == "izquierda" and not chica
      tiendas_ropa()
      elsif movimiento == "derecha" and not chica
      cafeterias()
      elsif next_move == "enfrente" and not chica
      escaleras()
      else
      dead("Muevete. El tiempo pasa") and chica
      end
   end
end


def cafeterias ()
puts "Un buen desayuno asegura el exito"
puts "Elige cafeteria: 1 por la primera y 2 por la segunda."

     prompt; movimiento = gets.chomp
     movimiento == 1
dead( puts " Entras en la primera cafeteria. Es superchic y los precios son muy caros:
Tomas algo, seguro que te dan el trabajo, un capricho te pondra de buen humor.
Los precios no incluian iva...no tienes dinero. Preguntas por el servicio e intentas largarte, pero te pillan y tienes que salir corriendo. Genial, a ver como se lo explicas a tus padres..")

    movimiento == 2
puts "Entras en la segunda cafeteria: te alegras con un buen desayuno. El precio esta bien, pero se te esta haciendo tarde. El camarero es super mono y te sonrie al salir, ¡te apuntas el sitio XD!" 
habitaciones = habitaciones + 1
centro_comercial()
end

def tiendas_ropa()
puts "Elige tienda de ropa: primera o segunda"

     prompt; movimiento = gets.chomp
     if movimento.include? "primera"
     puts "Entras en la primera tienda: ¡¡¡Estan de rebajas!!! Te    vuelves loca y cuando te das cuenta, se te esta haciendo tarde. Intentas dejarlo todo pero con las prisas te llevas un fular que no es tuyo. Suena la alarma aparecen los de seguridad y para cuando terminas de explicarte llegas una hora tarde."
puts "Genial, te has quedado sin trabajo."
     elsif movimiento.include? "segunda"
puts "Entras en la segunda tienda: tienen una falda preciosa en el escaparate, morada y negra. Solo les queda esa, pero es tu talla. Te la llevas puesta. Es un buen augurio seguro que hoy triunfas."
habitaciones = habitaciones + 2
centro_comercial()
      else "Elige que se hace tarde." tiendas_ropa()
      end
end

def escaleras()
puts "Subes al primer piso, la zapateria es lo unico abierto."

 if habitaciones > 2
dead (puts "Llegas tarde. Sale el dueño te dice que la puntualidad es muy importante y que tiene ya a la siguiente candidata esperando.")

 elsif habitaciones = 2
puts "La chica del mostrador se te queda mirando la falda. Preguntas por el dueño, pero ella solo te pregunta si no es la que estaba abajo. Le dices que si, y ves que pone morritos...su padre (el dueño) le dijo que esperara a que la rebajaran mas. Y le gustaba tanto...Le dices que no se preocupe que si quieres se la presta, os ponéis a chismorrear y para cuando llega su padre tienes unos valiosos consejos sobre como ganártelo."
puts "Has conseguido el trabajo. ¡Enhorabuena!"

 elsif habitaciones = 1
dead(puts "Llegas pronto y te pones a hablar con la chica del mostrador. Le preguntas por el camarero de abajo, el que es tan mono....¡oh no!, es su novio. Intentas arreglarlo pero llega su padre y ella esta de un humor de perros, empieza a hablar con su padre en otro idioma y cuando te das cuenta has sido “amablemente” descartada. Esa bocaza te ha perdido.")

 else habitaciones = 0

puts "Hablas con la chica del mostrador y  esperas. Te cuenta que su novio trabaja abajo en la segunda cafeteria, pero que como sus  horarios muchas veces no coinciden se ven poco. Te ofreces a ayudarla en lo que puedas, y muy agradecida te cuenta algunos valiosos consejos sobre como ganarte a su padre."
puts "Has conseguido el trabajo. ¡Enhorabuena!"
 end
end

def dead(why) 
puts "#{why}¡Muy inteligente!" 
end

centro_comercial ()
)

)
