require "csv"
require "student"

class Grader
  def initialize(file)
    @file = file
    @students = []
  end

  def scrape
    CSV.foreach(@file, headers: true) do |row|
      name = "#{row['first_name']} #{row['last_name']}"
      english = row['english']
      math = row['math']
      physics = row['physics']
      student = Student.new(name, english, math, physics)
      @students << student
    end
    @students
  end
end
