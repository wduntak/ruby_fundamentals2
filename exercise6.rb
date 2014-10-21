grocery_list = ["carrots", "toilet paper", "apples", "salmon"]

#Adding items to the list

isValid = false

until isValid

	puts "What would you like to add to the grocery list? (Type 'quit' to quit.)"

	item_to_add = gets.chomp.downcase

	if item_to_add == "quit"

		puts " "

		puts "Closing..."

		isValid = true

	else
		grocery_list << "#{item_to_add}"

		puts "#{item_to_add} has been added."

		isValid = false

	end
end

#Count how many items

num_items = grocery_list.length

puts ""

puts "You need to pick up #{num_items} items."

#Check list if item included

checkValid = false

until checkValid

puts "Have you forgotten any items? (Y/N)"
answer = gets.chomp.upcase

	if answer == "Y"

		puts "What do you want to add?"

		checkValid = false

	elsif answer == "N"

		puts ""

		puts "Closing ..."

		puts ""

		checkValid = false
	else 

		puts "That is not a valid answer."

	end
end


#Add * to all of the items in array

grocery_list.map! {|x| "*" + x}

#Output list

puts " "

puts "Here's your grocery list:"

puts grocery_list