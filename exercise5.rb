puts "Enter the temperature as Fahrenheit to be converted as Celsius:"

num = gets.chomp.to_i

def temperature(faren)

celsius = (faren - 32) * (5 / 9.0)

return celsius

end

# puts "Enter the temperature as Fahrenheit to be converted as Celsius:"

# num = gets.chomp.to_i

result = temperature(num)

puts "The temperature in Celsius is #{result}."