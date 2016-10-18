class PrimeFactor
  def initialize(n)
    @n = n
  end

  def calculate
    factors = []
    divisor = 2
    while @n > 1
      while @n % divisor == 0
        factors << divisor
        @n /= divisor
      end
      divisor += 1
    end
    factors
  end
end