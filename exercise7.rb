#Display each cohort name and amount of students
def list_students(students)
	students.each{|cohort, num| puts "#{cohort}: #{num} students"}
	puts ""
end

students = {
	:cohort1 => 34, 
	:cohort2 => 42,
	:cohort3 => 22
}

list_students(students)

#Add 43 students for cohort 4
students[:cohort4] = 43

list_students(students)

#Display all keys from Hash
puts students.keys

puts ""

#Increase amount of students by 5%
students.each{|cohort, num| students[cohort] = (num * 1.05).to_i}


list_students(students)

#Delete 2nd cohort and display Hash
students.delete(:cohort2)

list_students(students)

#BONUS: Add the number of cohorts to an incrementing variable

total_students = 0

students.each{|cohort, num| total_students += num}

puts "The total number of students is #{total_students}."