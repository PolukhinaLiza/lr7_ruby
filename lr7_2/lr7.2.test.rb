# frozen_string_literal: true

require './lr7.2.main'
require 'minitest/autorun'

class TestTree < MiniTest::Test
  def setup; end

  def test_1
    if assert_instance_of(VHouse.class, SHouse) == true
      p 'SHouse'
    else
      p 'Другой класс'
    end
  end

  def test_2
    if assert_instance_of(SHouse.class, Class) == true
      p 'Class'
    else
      p 'Другой класс'
    end
  end

  def teardown; end
end
