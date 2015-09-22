require 'roman_number'

# Roman numbers converter class
class RomanConverter
  extend RomanNumber

  def self.to_integer(roman_char, result = 0)
    return result unless valid?(roman_char)
    mapping.values.each do |roman|
      next unless roman_char.start_with?(roman)
      result += mapping.invert[roman]
      roman_char = roman_char.slice(roman.length, roman_char.length)
      return to_integer(roman_char, result)
    end
  end
end
