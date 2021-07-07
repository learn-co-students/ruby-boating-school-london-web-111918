class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, boating_test) #student name string and test name string as arguments
    if check = BoatingTest.all.find {|test| test.student.first_name == student && test.test_name == boating_test}
      check.status = "passed"
      check
    else
      test_name = boating_test
      status = "passed"
      instructor = self
      boating_test_new = BoatingTest.new(student, test_name, status, instructor)
      boating_test_new
    end
  end



  def fail_student(student, boating_test)
    if check = BoatingTest.all.find {|test| test.student.first_name == student && test.test_name == boating_test}
      check.status = "failed"
      check
    else
      test_name = boating_test
      status = "failed"
      instructor = self
      boating_test_new = BoatingTest.new(student, test_name, status, instructor)
      boating_test_new
    end
  end
end
