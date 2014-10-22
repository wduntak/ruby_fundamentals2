grocery_list = ["banana", "apple", "orange"]

puts "Enter food:"
add = gets.chomp

if grocery_list.include?("#{add}")

	puts "You have this item on your list"

else

	grocery_list << "#{add}"
	puts "#{add} has been added."

end