def dragon_cave
  puts "You saw a princess and a dragon."
  puts "What are you doing?"
  
  print "> "
  choice = $stdin.gets.chomp
  
  if (choice.include? "attack") && (choice.include? "dragon")
    puts "You hit the dragon. The dragon scream and attack you."
    puts "The dragon hit you."
    dead("You died!")
  elsif (choice.include? "attack") && (choice.include? "princess") 
    puts ""
    puts ""
    dead("You are a joker!")
  elsif (choice.include? "save") && (choice.include? "princess")
    puts
    puts
    cage_princess
  else 
    puts "I dont understand you"
    #puedo aqui inicializar la variable??
  end
end

def magic_cave
  puts "The book is opened and the cave is illuminated."
  puts "You saw how a door appears in the wall. The door is closed with a lock."
  puts "What are you doing?"
  #Opciones para ofrecer alternativas
  #en plan que salga por consola 1 = read book, 2 = get out, y que si pone 1 sea la primera?
  
  print "> "
  choice = $stdin.gets.chomp
  
  if choice.include? "book"
    puts "The book fits in the lock. The door is opened."
  elsif choice.include? "sword"
    puts "The sword is dissapear!"
  else
    dead("You are lost in Fantasy!")
  end
end

def heroe_cave
  puts "You listen a scream "
  puts "What are you doing?"
  
  print "> "
  choice =$stdin.gets.chomp
  
  if choice.include? "before"
    dragon_cave
  elsif choice.include? "run away"
    dead("You are a coward")
  else
    dead("A dragon appears and eats you.")
  end  
end

def dead(why)
  puts why, "Good job!"
  exit(0) 
end

def start
  @thing
  puts "You are in a cave. You saw a sword, and a book."
  puts "Which one do you take?"
  
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "sword"
    @thing == "sword"
    heroe_cave  
  elsif choice == "book"
    @thing = "book"
    magic_cave
  else
    dead("You get out the cave!! Bon voyage ")
  end
end

start