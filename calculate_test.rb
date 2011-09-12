require 'test/unit'
require_relative 'string/calculate'

class CalculateTest < Test::Unit::TestCase
  def test_addition
    assert_equal "1+5".calculate, 6
  end
  
  def test_substraction
    assert_equal "6-1".calculate, 5
  end
  
  def test_multiplication
    assert_equal "6*2".calculate, 12
  end
  
  def test_division
    assert_equal "60/5".calculate, 12
  end
  
  def test_advanced_math_a
    assert_equal "15+35-5*5".calculate, 25
  end

  def test_advanced_math_b
    assert_equal "5+10/2-8*4".calculate, -22
  end

  def test_advanced_math_c
    assert_equal "16*12/6+67-12+20/5".calculate, 91
  end
  
  def test_floats_addition
    assert_equal "15.5 + 12.7".calculate, 28.2
  end
  
  def test_floats_substraction
    assert_equal "7.24 - 4.12".calculate, 3.12
  end
  
  def test_floats_multiplication
    assert_equal "4.5 * 3".calculate, 13.5
  end
  
  def test_floats_division
    assert_equal "5.5 / 11".calculate, 0.5
  end
end


