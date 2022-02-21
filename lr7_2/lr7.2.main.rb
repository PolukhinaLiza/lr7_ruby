# frozen_string_literal: true

# Description/Explanation of SHouse class
class SHouse
  def initialize(year, square, cost)
    @year = year
    @square = square
    @cost = cost
  end

  def print_m
    puts "Год постройки #{year}"
    puts "Площадь #{square}"
    puts "Стоимость #{cost}"
  end

  attr_writer :year
  attr_reader :year, :square, :cost
end

# Description/Explanation of VHouse class
class VHouse < SHouse
  def initialize(year, square, cost, square_cost)
    super(year, square, cost)
    @square_cost = square_cost
  end

  def print_m_1
    puts "Год постройки #{year}"
    puts "Площадь  #{square}"
    puts "Стоимость #{cost}"
    puts "Стоимость квадратного метра #{square_cost}"
  end

  attr_reader :year, :square, :cost, :square_cost
end
