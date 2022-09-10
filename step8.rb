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
  puts 'Please enter the names of the students and then their cohort'
  puts 'To finish, just hit return twice'

  students = []

  # While name is not empty repeat this code.
  loop do
    name = gets.chomp
    break if name.empty?
    cohort = gets.chomp.to_sym
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def organise_by_cohort(students)
  # Create a list of cohorts
  cohort_list = students.map do |student|
    student[:cohort]
  end
  # Removes duplicates from that list
  compact_list = cohort_list.uniq

  students_organised = []
  compact_list.each do |value|
    students.each do |student|
      if student[:cohort] == value then students_organised.push(student) end
    end
  end
  students_organised
end

students = input_students
organised_students = organise_by_cohort(students)
print_header
print(organised_students)
print_footer(students)