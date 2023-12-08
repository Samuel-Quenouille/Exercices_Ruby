# Écris un programme qui demande le prénom de l'utilisateur, et qui salue l'utilisateur avec "Bonjour, prénom !"
puts "=== Exo 01 ==="
puts "Bonjour, c'est quoi ton prénom ?"
user_name = gets.chomp
puts "Bonjour, #{user_name} !"

# Écris un programme qui demande le prénom de l'utilisateur, qui lui demande après son nom de famille, et qui salue l'utilisateur avec "Bonjour, prénom nom !"
puts "=== Exo 02 ==="
puts "Bonjour, c'est quoi ton prénom ?"
user_name = gets.chomp
puts "Et c'est quoi ton nom ?"
user_last_name = gets.chomp
puts "Bonjour, #{user_name} #{user_last_name} !"

# Écris un programme qui demande son année de naissance à l'utilisateur, puis qui ressort l'âge que l'utilisateur a eu en 2017.
puts "=== Exo 03 ==="
year_2017 = 2017
puts "Bonjour, quelle est ton année de naissance ?"
user_year_of_birth = gets.to_i
puts "En 2017 tu avais #{year_2017 - user_year_of_birth} ans"

# Écris un programme qui demande un nombre à l'utilisateur, puis qui écrit autant de fois "Salut, ça farte ?"
puts "=== Exo 04 ==="
puts "Bonjour, donnes-moi un nombre"
number = gets.to_i
number.times do
    puts "Salut, ça farte ?"
end

# Écris un programme qui demande un nombre à l'utilisateur, puis qui compte jusqu'à ce nombre.
puts "=== Exo 05 ==="
puts "Bonjour, donnes-moi un nombre"
print "> "
number = gets.to_i
number.times do |index|
    puts index + 1
end