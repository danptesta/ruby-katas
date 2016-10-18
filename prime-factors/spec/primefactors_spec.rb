require "primefactor"

describe PrimeFactor do

  [
    [1, []],
    [2, [2]],
    [3, [3]],
    [4, [2,2]],
    [5, [5]],
    [6, [2,3]],
    [7, [7]],
    [8, [2,2,2]],
    [9, [3,3]],
    [2*3*3*5*5*7*11, [2,3,3,5,5,7,11]]
  ].each do |input, factors|
    it 'should return #{factors} for input of #{input}' do
      prime_factorial = PrimeFactor.new(input)
      prime = prime_factorial.calculate
      expect(prime).to eq(factors)
    end
  end
end
