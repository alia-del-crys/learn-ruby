# -*- encoding : utf-8 -*-
require 'rubygems'
require 'net/ldap'

organization = "meytel01"

entries = []
config = {
   :host => 'ldap01.lciberica.es', 
   :port => 389, 
   :base => 'dc=lciberica,dc=es'
}
    
filter = Net::LDAP::Filter.eq("objectclass", "organization") 
#filter = Net::LDAP::Filter.eq("o", organization) 
Net::LDAP.open(config) do |ldap|
  entries = ldap.search(:filter => filter)
  os = ldap.get_operation_result
  raise Exception.new("Se ha producido el siguiente error en LdapHelper::existe_userid?: #{os.message}") unless os.code == 0     
end  

entry = entries.detect{|e| e[:o].first.downcase == organization.downcase}

puts entries.map{|e| e[:o]}.sort.join(',')
puts "-> #{entry.inspect}"

}"

