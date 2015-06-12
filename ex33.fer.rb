# -*- encoding : utf-8 -*-


def rellenar(lista, tope, paso=1)
  return false unless tope > 1
  i = 0
  while i < tope
    puts "arriba: #{i}"
    lista.push(i)
    i += paso
    puts "abajo: i:#{i} lista: #{lista.inspect}\n"
  end
  lista
end

numeros = []

rellenar( numeros, 10 )

for num in numeros
   puts num
end

numeros2 = [1,3,5]

rellenar( numeros2, 8, 2)

for num in numeros2
   puts num
end
nd

nd
