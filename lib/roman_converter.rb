# Roman numbers converter class
require 'roman_number'
class RomanConverter
  extend RomanNumber

  def self.to_integer(roman_number, result = 0)
    return result unless is_roman?(roman_number)
    mapping.values.each do |roman|
      result = mapping.invert[roman]
    end
    result
  end

  private

  def self.is_roman?(roman_number)
    !roman_number.nil? && !roman_number.empty?
  end
end
