require_relative '02-car'


fusca = Car.new("Volkswagen", "White") # Uma instância da classe Carro
ferrari = Car.new("Ferrari", "Red Torino")

fusca.generate_plate
ferrari.generate_plate

# Mudando a KM do veiculo
fusca.km = 10_000

puts "Vehicle #{fusca.color} #{fusca.brand} #{fusca.plate} is with #{fusca.km} km's"
puts "Vehicle #{ferrari.color} #{ferrari.brand} #{ferrari.plate} is with #{ferrari.km} km's"
