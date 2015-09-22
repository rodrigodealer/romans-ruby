require File.join(File.dirname(__FILE__), "lib/roman_converter")

puts "Please, type a roman characters:"
ARGF.each do |line|
  result = RomanConverter.to_integer(line.strip)
  if result == 0
    puts "There's no corresponding integer for this input"
  else
    puts "The corresponding integer for the roman #{line.strip} is: #{result}"
  end
end
