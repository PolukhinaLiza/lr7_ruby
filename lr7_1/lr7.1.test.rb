# frozen_string_literal: true

require './lr7.1.user'
require 'minitest/autorun'

class TestTree < MiniTest::Unit::TestCase
  def setup
    @par1 = 'F'
    @par2 = 'G'
    @par3 = '1abc 2def 3error 4mishka 5podushka pprogramming ppotato'
    @par4 = '1abc 2def 3erorr pprogring dust 1b pprogramming'
  end

  def test_1
    actual = IO.read('F')
    if assert_match(actual, par3) == true then puts 'Эквиваленты'
    else puts 'Не эквивалентны'
    end
  end

  def test_2
    assert_equal(poisk(par3.split(' '), par4.split(' ')), 3)
  end

  def teardown
    File.delete(par1) if File.exist?(par1)
    File.delete(par2) if File.exist?(par2)
  end
  attr_reader :par1, :par2, :par3, :par4
end
