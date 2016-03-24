class Student
  attr_accessor :name
  
  def initialize(g, n)
    @grade = g
    @name = n
  end
  
  def better_grade_than?(x)
    get_grade > x.get_grade ? "Well done!" : "#{name} grade is lower " +
    "than #{x.name}"
  end
  
  protected
  
  def get_grade
    @grade
  end
end

bob = Student.new(9, "Bob")
joe = Student.new(8, "Joe")

puts joe.better_grade_than?(bob)