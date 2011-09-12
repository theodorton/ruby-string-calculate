class String
  def calculate
    factors = Hash.new
    if (factors[:add] = self.split('+')).size > 1
      # Addition
      factors[:add].map(&:calculate).inject(:+)
    elsif (factors[:sub] = split('-')).size > 1
      # Substraction
      factors[:sub].map(&:calculate).inject(:-)
    elsif (factors[:div] = split('/')).size > 1
      # Division
      factors[:div].map(&:calculate).inject(:/)
    elsif (factors[:mul] = split('*')).size > 1
      # Multiplication
      factors[:mul].map(&:calculate).inject(:*)
    else
      # No calculation needed
      to_i
    end
  end
end