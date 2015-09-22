# This class contains all the roman number mappings
module RomanNumber
  def mapping
    {
      1000 => 'M',
      900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
      90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X',
      9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'
    }
  end

  def valid?(roman_number)
    !roman_number.nil? && !roman_number.empty?
  end
end
