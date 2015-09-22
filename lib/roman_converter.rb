# Roman numbers converter class
class RomanConverter
  def self.to_integer(roman_number, result = 0)
    return result if roman_number.nil? || roman_number.empty?
  end
end
