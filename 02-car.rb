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
    # p/ receber um conjunto de 3 Letras e 4 dígitos aleatórios separados por hífen
    # Ex. LRB-9105
    letters = ("A".."Z").to_a.shuffle.sample(3).join
    digits = ("0".."9").to_a.shuffle.sample(4).join
    @plate = "#{letters}-#{digits}"
  end
end
