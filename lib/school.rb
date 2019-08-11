class School

  def initialize(roster)
    @roster = {}
  end

  def roster #attr_reader
    @roster
  end



  def add_student(name,grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    @roster.each do |grade,students|
      students.sort!
    end
  end
end
