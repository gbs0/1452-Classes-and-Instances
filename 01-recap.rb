require 'pry'

# Faça uma função que devolva os carácteres inicias de um nome composto
def initials(first_name, last_name)
  # Extrair a primeira inicial de first_name
  first_letter = first_name.split("").first
  last_letter = last_name.split("").first
  binding.pry
  return "#{first_letter}#{last_letter}"
end

puts initials("John", "Lennon") # => "JL"
puts initials("David", "Bowie") # => "DB"
