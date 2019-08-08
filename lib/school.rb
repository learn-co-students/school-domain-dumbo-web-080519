require 'pry'

class School

    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        #if grade key is present, push student name into the array at that grade key
        if roster.include?(grade)
            roster[grade] << name
        else
            #if roster doesnt have that grade, add the key grade and add an array , pushing student
            roster[grade] = []
            roster[grade] << name
        end
        roster.sort
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        #sort array isnt consistent with simpsons test?
        roster.map{ |grade, students_array|
             students_array.sort!
        }
        roster.sort.to_h
    end
end