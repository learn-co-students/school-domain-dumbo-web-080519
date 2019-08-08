require 'pry'

class School
    attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @roster[grade] == nil ? @roster[grade] = [student_name] : @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort_by {|name| name}
    end
    @roster = Hash[@roster.sort_by {|grade, students| grade}]
    # binding.pry
  end

end
# binding.pry
# 0