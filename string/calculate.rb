class String
  def calculate
    [:+, :-, :/, :*].each do |op|
      factors = self.split(op.to_s)
      return factors.map(&:calculate).inject(op) if factors.size > 1
    end
    to_f # No calculation needed
  end
  
  def calc
    calculate
  end
end