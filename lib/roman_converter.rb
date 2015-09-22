require 'roman_number'

# Roman numbers converter class
class RomanConverter
  extend RomanNumber

  def self.to_integer(roman_number, result = 0)
    return result unless roman?(roman_number)
    return result unless valid?(roman_char)
    mapping.values.each do |roman|
      result = mapping.invert[roman]
    end
    result
  end
end
