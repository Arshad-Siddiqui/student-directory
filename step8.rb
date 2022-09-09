# First we print the list of students
# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november},
#   {name: "Darth Vader", cohort: :november},
#   {name: "Nurse Ratched", cohort: :november},
#   {name: "Michael Corleone", cohort: :november},
#   {name: "Alex DeLarge", cohort: :november},
#   {name: "The Wicked Witch of the West", cohort: :november},
#   {name: "Terminator", cohort: :november},
#   {name: "Freddy Krueger", cohort: :november},
#   {name: "The Joker", cohort: :november},
#   {name: "Joffrey Baratheon", cohort: :november},
#   {name: "Norman Bates", cohort: :november}
# ]

def input_students
  puts 'Please enter the names of the students and then the cohort'
  puts 'To finish, just hit return twice'

  students = []

  name = gets.chomp.to_sym
  cohort = gets.chomp.to_sym
  # While name is not empty repeat this code.
  loop do
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    name = gets.chomp.to_sym
    if name.empty? then break end
    cohort = gets.chomp.to_sym
  end
  students
end

def print_header
  puts "The students of Villains Academy".center 60
  puts "-------------".center 60
end

def print(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)".center 60
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center 60
end

students = input_students
print_header
print(students)
print_footer(students)