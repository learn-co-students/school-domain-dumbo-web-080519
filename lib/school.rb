class School
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        @roster[grade] ? @roster[grade] << student : @roster[grade] = [student]
    end

    def grade(grade_num)
        @roster[grade_num]
    end

    def sort
        @roster.each do |grade, students|
            students.sort!
        end
    end
    @roster
end