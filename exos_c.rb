# Écris un programme qui demande son année de naissance à l'utilisateur, puis qui ressort l'année où l'utilisateur aura 100 ans.
puts "=== Exo 01 ==="
puts "Bonjour, quelle est ton année de naissance ?"
user_year_of_birth = gets.to_i
puts "En #{user_year_of_birth + 100} tu auras 100 ans"

# Écris un programme qui demande un nombre à un utilisateur, puis qui écrit autant de fois -1 "Bonjour toi !". Ainsi, si l'utilisateur rentre 10, le programme devra écrire 9 fois "Bonjour toi !"
puts "=== Exo 02 ==="
puts "Bonjour, donnes-moi un nombre"
number = gets.to_i - 1
number.times do
    puts "Bonjour toi !"
end

# Écris un programme qui demande un nombre à l'utilisateur, puis qui affiche un compte à rebours à partir de ce nombre, jusqu'à 0.
puts "=== Exo 03 ==="
puts "Bonjour, donnes-moi un nombre"
number = gets.to_i
number.downto(0) do |index|
    puts index
end

# Écris un programme qui demande son année de naissance à l'utilisateur, puis qui va ressortir chaque année depuis son année de naissance jusqu'aujourd'hui.
puts "=== Exo 04 ==="
puts "Bonjour, quelle est ton année de naissance ?"
user_year_of_birth = gets.to_i
year_today = Time.now.year
(user_year_of_birth..year_today).each do |year|
    puts year
end

# Écris un programme qui demande son année de naissance à l'utilisateur et qui va afficher chaque année depuis son année de naissance jusqu'aujourd'hui. Pour chaque année affichée, le programme devra annoncer l'âge que l'utilisateur avait cette année-là.
puts "=== Exo 05 ==="
puts "Bonjour, quelle est ton année de naissance ?"
user_year_of_birth = gets.to_i
year_today = Time.now.year
(user_year_of_birth..year_today).each do |year|
    age = year - user_year_of_birth
    if year == user_year_of_birth
        puts "Tu es né en #{year}"
    elsif year == year_today
        puts "Aujourd'hui en #{year_today} tu as #{age} ans"
    elsif year == user_year_of_birth + 1
        puts "En #{year} tu avais #{age} an"
    else
        puts "En #{year} tu avais #{age} ans"
    end
end

# Écris un programme qui va demander son âge à l'utilisateur, et qui, pour chaque année depuis sa naissance, dira "Il y a X ans, tu avais Y ans".
puts "=== Exo 06 ==="
puts "Bonjour, quelle est ton année de naissance ?"
user_year_of_birth = gets.to_i
year_today = Time.now.year
(user_year_of_birth..year_today).each do |year|
    age = year - user_year_of_birth
    date = year_today - year
    if year == user_year_of_birth
        puts "Il y a #{date} ans tu naissais"
    elsif year == user_year_of_birth + 1
        puts "Il y a #{date} ans, tu avais #{age} an"
    elsif year == year_today
        puts "Aujourd'hui tu as #{age} ans"
    else
        puts "Il y a #{date} ans, tu avais #{age} ans"
    end
end

# Écris un programme qui va faire la même chose, sauf que si X et Y sont égaux, il dira "Il y a n ans, tu avais la moitié de l'âge que tu as aujourd'hui".
puts "=== Exo 07 ==="
puts "Bonjour, quelle est ton année de naissance ?"
user_year_of_birth = gets.to_i
year_today = Time.now.year
(user_year_of_birth..year_today).each do |year|
    age = year - user_year_of_birth
    date = year_today - year
    if year == user_year_of_birth
        puts "Tu es né il y a #{date} ans"
    elsif year == user_year_of_birth + 1
        puts "Il y a #{date} ans, tu avais #{age} an"
    elsif year == year_today - 1
        puts "Il y a #{date} an, tu avais #{age} ans"
    elsif year == year_today
        puts "Aujourd'hui tu as #{age} ans"
    elsif age == date
        puts "Il y a #{date} ans, tu avais la moitié de l'âge que tu as aujourd'hui"
    else
        puts "Il y a #{date} ans, tu avais #{age} ans"
    end
end