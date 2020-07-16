class Instructor

  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def pass_student(student_name, test_name)
    pass_fail_student(student_name, test_name, "passed")
  end

  def fail_student(student_name, test_name)
    pass_fail_student(student_name, test_name, "failed")
  end

  def pass_fail_student(student_name, test_name, status)
    student = Student.all.find {|student| student.name == student_name}
    test = BoatingTest.all.find {|test| test.student == student && test.name == test_name}
    if test
      test.status = status
      return test
    else
      BoatingTest.new(student, test_name, status, self)
    end
  end

end
