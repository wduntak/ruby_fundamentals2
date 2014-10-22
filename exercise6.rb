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

puts ""

#Check list if item included

checkValid = false

unless checkValid

	puts "Have you forgotten any items? (Y/N)"
	answer = gets.chomp.upcase

	puts ""

	if answer == "Y"

		isTrue = false

		until isTrue

			puts "What do you want to add? (Type 'done' when finished)"
			add = gets.chomp.downcase

			puts ""

			if add == "done"
			
				isTrue = false
			
			else
				
				if grocery_list.include?("#{add}")

					puts "You have this item on your list."

				else

					grocery_list << "#{add}"
					puts "#{add} has been added."

				end

				isTrue = true

			end

		end

			checkValid = false

	elsif answer == "N"

			puts ""

			puts "Closing ..."

			puts ""

			checkValid = false
	else 

			puts "That is not a valid answer."

	end

checkValid = true
	
end

#Display the second item on the list or array

second_item = grocery_list[1]

puts "The second item on the list is #{second_item}."

#Sort the list alphabetically

grocery_list.sort!

#Remove item from list

verify = false

until verify

	puts "What would you like to remove from the grocery list? (Type 'quit' to quit.)"

	item_to_remove = gets.chomp.downcase

	if item_to_remove == "quit"

		puts " "

		puts "Closing..."

		verify = true

	else
		
		grocery_list.delete("#{item_to_remove}")

		puts "#{item_to_remove} has been removed."

		verify = false

	end
end

#Add * to all of the items in array

grocery_list.map! {|x| "*" + x}

#Output list

puts " "

puts "Here's your grocery list:"

puts grocery_list