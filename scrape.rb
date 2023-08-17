require "grader"
require "terminal-table"

file = File.open("./files/grades.csv")
grader = Grader.new(file)

students = grader.scrape
table_rows = []

students.each do |student|
  table_rows << [student.name, student.english.to_i.to_s, student.math.to_i.to_s, student.physics.to_i.to_s, student.average.to_i.to_s]
end

table = Terminal::Table.new(headings: ['Name', 'English', 'Math', 'Physics', 'Average'], rows: table_rows)

puts table
