require "romans"

describe Romans do
  let(:romans) { Romans.new }

  it "converts 0 to empty string" do
    expect(romans.convert(0)).to eq ''
  end

  {
    1 => 'I',
    2 => 'II',
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M',
    2016 => 'MMXVI'
  }.each do |arabic, roman|
    it "converts #{arabic} to #{roman}" do
      expect(romans.convert(arabic)).to eq roman
    end
  end
end