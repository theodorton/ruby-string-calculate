class String
  def calculate
    if (factors = self.split('+')).size > 1
      factors.map(&:calculate).inject(:+)  # Addition
    elsif (factors = split('-')).size > 1
      factors.map(&:calculate).inject(:-)  # Subtraction
    elsif (factors = split('/')).size > 1
      factors.map(&:calculate).inject(:/)  # Division
    elsif (factors = split('*')).size > 1
      factors.map(&:calculate).inject(:*)  # Multiplication
    else
      to_f  # No calculation needed
    end
  end
  
  def calc
    calculate
  end
end