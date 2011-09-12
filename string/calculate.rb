class String
  def calculate
    if (factors = self.split('+')).size > 1
      factors.map(&:calculate).inject(:+)  # Addition
    elsif (factors = split('-')).size > 1
      factors.map(&:calculate).inject(:-)  # Substraction
    elsif (factors = split('/')).size > 1
      factors.map(&:calculate).inject(:/)  # Division
    elsif (factors = split('*')).size > 1
      factors.map(&:calculate).inject(:*)  # Multiplication
    else
      to_i  # No calculation needed
    end
  end
end