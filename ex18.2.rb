# -*- encoding : utf-8 -*-
def alia(*args)
  arg1, arg2, arg3 = args
  puts "arg1: #{arg1}, arg2: #{arg2}, arg3: #{arg3}"
end

def alia_2(arg1, arg2)
  puts "arg1: #{arg1}, arg2:#{arg2}"
end

def uno (arg1)
  puts "arg1: #{arg1}!"
end

# this one takes no arguments
def nada()
  puts "Caja vacia."
end

alia("Duncan","Alia", "Leto")
alia_2("Dune","Caladan")
uno("Uno")
nada()
()

()
