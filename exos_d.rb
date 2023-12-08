# Écris un programme qui va créer une liste de 50 faux emails et les stocker dans une array. Voici le format que devront avoir les faux emails : "jean.dupont.01@email.fr"
# "jean.dupont.02@email.fr" etc...
puts "=== Exo 01 ==="
emails = []

50.times do |index| # Génération des 50 mails
    number = format('%02d', index + 1) # Formatage du numéro avec un zéro devant s'il est inférieur à 10
    email = "jean.dupont.#{number}@email.fr" # Construction de l'email avec le numéro formaté
    emails << email # Ajout de l'email à l'array
end

# Afficher les emails
puts "Liste des emails :"
emails.each do |email|
    puts email
end

#####################

# Créér un programme qui va reprendre l'array des emails créés, et n'afficher que les emails avec un nombre pair.
puts "=== Exo 02 ==="
emails = []

50.times do |index|
    number = format('%02d', index + 1)
    email = "jean.dupont.#{number}@email.fr"
    emails << email
end

# Afficher les emails
puts "Liste des emails avec un numéro pair :" 
emails.each do |email|
    number = email[/\d+/].to_i
    puts email if number.even?
end

#####################

# Construis un programme qui va demander à l'utilisateur un nombre entre 1 et 25 et qui va sortir une pyramide à descendre d'autant d'étages que ce nombre.
puts "=== Exo 03 ==="
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Choisi un nombre entre 1 et 25) "
print "> "
number = gets.to_i
puts "Voici la pyramide :"
1.upto(number) do |index|
    index.times {print "#"}
    puts
end

# Reprends ton programme exo_15.rb et fais un programme pyramide.rb qui montera au lieu de descendre :
puts "=== Exo 04 ==="
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Choisi un nombre entre 1 et 25) "
print "> "
number = gets.to_i
puts "Voici la pyramide :"
1.upto(number) do |index|
    print " " * (number - index) # Ajoute des espaces pour décaler la pyramide à droite
    index.times { print "#" }
    puts
end