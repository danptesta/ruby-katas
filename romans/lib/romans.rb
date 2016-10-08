class Romans
  VALUES = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    2 => 'II',
    1 => 'I',
  }

  def convert(number)
  	return '' if number.zero?

    arabic, roman = VALUES.find { |key, _| key <= number }
    roman + convert(number - arabic)
  end
end