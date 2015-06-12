# -*- encoding : utf-8 -*-

# mapa de españa por comunidades autonomas
com_aut = {
      'Cataluña' => 'CA',
      'Madrid' => 'MA',
      'Valencia' => 'CV',
      'Asturias' => 'AS',
      'Galicia' => 'GA',
      'Canarias' => 'CA',
      'Cantabria' => 'CN',
      'Andalucia' => 'AN'
}

# algunas ciudades de España
ciudad = {
     'AS' => 'Gijon',
     'CN' => 'Santander',
     'AN' => 'Sevilla'
}

# algunas provincias de España
provincia = {
     'AN' => 'Granada',
     'AN' => 'Huelva',
     'AN' => 'Jaen'
}
provincia = {
     'AN' => ['Granada','Huelva','Jaen']
}

# Añado  comunidades
com_aut['Castilla la mancha'] = 'CM'
com_aut['Castilla y Leon'] = 'CL'

# imprimo algunas ciudades
puts '-' * 10
puts "Asturias tiene como ciudad: ", ciudad['AS']
puts "Cantabria tiene como ciudad: ", ciudad['CN']

# imprimo las abreviaturas de las comunidades
puts '-' * 10
puts "La abreviatura de Cataluña es: ", com_aut['Cataluña']
puts "La abreviatura de Andalucia es: ", com_aut['Andalucia']

# imprimo a partir de ciudades
puts '-' * 10
puts "Asturias tiene: ", ciudad[com_aut['Asturias']]
puts "Cantabria tiene: ", ciudad[com_aut['Cantabria']]


# imprimo ciudades, com_aut y provincias
puts '-' * 10
com_aut.each do |nombre,abbrev|
    printf "\n%s tiene como abreviatura %s ", nombre, abbrev
    printf "y como provincias: %s" % [(provincia[abbrev] && provincia[abbrev].join(',')) || 'ninguna' ]
end
puts
    

  

