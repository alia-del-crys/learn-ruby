ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that."

stuff = ten_things.split(' ')
more_stuff = ["Day", "Nigth", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

#using math to make suer there's 10 items

while stuff.length != 10 #length(stuff)
  next_one = more_stuff.pop #pop(more_stuff)
  puts "Adding: #{next_one}"
  stuff.push(next_one) #push(next one) stuff
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]#oranges
puts stuff[-1] #whoa! fancy # corn
puts stuff.pop()#corn # pop (stuff)
puts stuff.join(' ') #join('') stuff
puts stuff[3..5].join("#") #telephone#light#sugar # join (#) stuff[3]