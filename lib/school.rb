# code here!
class School
  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @student_name = name
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(number)
    @roster[number]
  end

  def sort
    sort = {}
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
    sort
  end

def sort
  @roster.sort_by |k, v| {[k, v]}
end
