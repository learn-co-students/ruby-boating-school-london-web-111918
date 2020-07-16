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

  def pass_student(student, test_name)
    result = BoatingTest.all.find {|test|
      test.student ==  student && test.test_name  == test_name}
        if !result
          BoatingTest.new(student, test_name, "passed", self)
        else
          result.test_status = "passed"
        end
  end

  def fail_student(student, test_status)
    result = BoatingTest.all.find {|test|
      test.student ==  student && test.test_name  == test_name}
        if !result
          BoatingTest.new(student, test_name, "passed", self)
        else
          result.test_status = "passed"
        end
  end
end
