class School
    attr_reader :roster


    def initialize(name)
        @name = name
        @roster = {}
    end


    def add_student(student, grade)
        if @roster[grade]
            @roster[grade].push(student)
        else
            @roster[grade] = []
            @roster[grade].push(student)
        end
    end

    def grade(grade_number)
        @roster[grade_number]
    end

    def sort
        @roster.reduce({}) do |memo, (grade,list)| 
            memo[grade] = list.sort
            memo
        end
    end


end

