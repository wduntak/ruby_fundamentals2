grocery_list = ["carrots", "toilet paper", "apples", "salmon"]

grocery_list.map! {|x| "*" + x}

puts grocery_list