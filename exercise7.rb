students = {
	:cohort1 => 34, 
	:cohort2 => 42,
	:cohort3 => 22
}

#Display each cohort name and amount of students

students.each{|key, value| puts "#{key} : #{value}"}

#Add 43 students for cohort 4

students.store("cohort4", 43)

puts students