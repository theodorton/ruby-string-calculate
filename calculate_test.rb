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
end


