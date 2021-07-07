class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def pass_student(student_name, test_name)
    test_result = BoatingTest.all.find {|test| test.student == student_name && test.name == test_name}
    if !test_result
      BoatingTest.new(student_name, test_name, "passed", self)
    else
      test_result.status = "passed"
    end
  end

  def fail_student(student_name, test_name)
    test_result = BoatingTest.all.find {|test| test.student == student_name && test.name == test_name}
    if !test_result
      BoatingTest.new(student_name, test_name, "failed", self)
    else
      test_result.status = "failed"
    end
  end

end
