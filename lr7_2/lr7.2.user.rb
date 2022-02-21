# frozen_string_literal: true

require './lr7.2.main'
puts('Введите год постройки, площадь, стоимость и стоимость квадратного метра')

year_u = gets.to_i
square_u = gets.to_i
cost_u = gets.to_i
square_cost_u = gets.to_i

a = SHouse.new(year_u, square_u, cost_u)
a.print_m

b = VHouse.new(year_u, square_u, cost_u, square_cost_u)
b.print_m_1
