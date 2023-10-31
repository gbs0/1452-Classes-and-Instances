require 'pry'

class Car
  attr_accessor :km
  attr_reader :brand, :color, :plate

  def initialize(brand, color)
    @brand = brand
    @color = color
    @km = 0
    @plate = ""
  end

  def generate_plate
    # Ao chamar o método, deveremos reescrever o valor de @plate,
    # p/ receber um conjunto de 3 LEtras e 4 digitos aleatórios separados por hífen
    # LRF-9105
    letters = ("A".."Z").to_a.shuffle.sample(3).join
    digits = ("0".."9").to_a.shuffle.sample(4).join
    @plate = "#{letters}-#{digits}"
  end
end
