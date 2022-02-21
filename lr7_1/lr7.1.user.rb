# frozen_string_literal: true

require './lr7.1.main'

fvar = File.new('F', 'w')

fvar.write('1abc 2def 3error 4mishka 5podushka pprogramming ppotato')

fvar.close

gvar = File.new('G', 'w')

gvar.write('1abc 2def 3erorr pprogring dust 1b pprogramming')

gvar.close

Farr1 = IO.read('F').split(' ')

Garr1 = IO.read('G').split(' ')

result = poisk(Farr1, Garr1)
if result != 0
  puts "Первое расхождение в строках на позиции : #{result}"
else
  puts('Строки полностью совпадают')
end
