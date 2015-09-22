# Roman numbers converter class
class RomanConverter
  def self.to_integer(roman_number, result = 0)
    return result unless is_roman?(roman_number)
  end

  private

  def self.is_roman?(roman_number)
    !roman_number.nil? && !roman_number.empty?
  end

end
