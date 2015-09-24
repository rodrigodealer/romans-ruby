require File.join(File.dirname(__FILE__), "integers")

class IntegerConverter
  extend Integers

  def self.to_roman(integer, result = "")
    return result unless valid?(integer)
    mapping.keys.each do |roman|
      quotient, modulus = integer.divmod(roman)
      result << mapping[roman] * quotient
      return to_roman(modulus, result) if quotient > 0
    end
  end
end
