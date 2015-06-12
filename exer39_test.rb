require './dict.rb'

#create a mapping of state of abbreviation
states = Dict.new()
Dict.set(states, 'Oregon', 'OR')
Dict.set(states, 'Florida', 'FL')
Dict.set(states, 'California', 'CA')
Dict.set(states, 'New York', 'NY')
Dict.set(states, 'Michigan', 'MI')

#create a basic set of states and some cities in them
cities = Dict.new()
Dict.set(cities, 'CA', 'San francisco')
Dict.set(cities, 'MI', 'Detroit')
Dict.set(cities, 'FL', 'Jacksonville')

#add some more cities
Dict.set(cities, 'NY', 'New york')
Dict.set(cities, 'OR', 'Portland')


#puts sout some cities
puts '-'*10
puts "NY State has: #{Dict.get(cities, 'NY')}"
puts "OR State has: #{Dict.get(cities, 'OR')}"

#puts some states
puts '-'*10
puts "Michigan's abbreviation is: #{Dict.get(states, 'Michigan')}"
puts "Florida's abbreviation is: #{Dict.get(states, 'Florida')}"

#do it by using the state then cities dict
puts '-'*10
puts "Michigan has: #{Dict.get(cities, Dict.get(states, 'Michigan'))}"
puts "Florida has: #{Dict.get(cities, Dict.get(states, 'Florida'))}"

#pues every state abbreviation
puts '-'*10
Dict.list(states)

#pues every city in state 
puts '-'*10
Dict.list(cities)

puts "-"*10
#by default ruby says "nil" when something isn't in there
state = Dict.get(states, 'Texas')

if !state
  puts "Sorry, no Texas"
end

#default values using ||= with the nil result
city = Dict.get(cities, 'TX', 'Does not Exist')
puts "The city for the state 'TX is #{city}"

