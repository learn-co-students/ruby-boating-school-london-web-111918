class Instructor
  attr_accessor :name
  attr_writer :test_status

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    result =  BoatingTest.all.find do |boating_test|
      boating_test.student == student && boating_test.test_name == test_name
    end
    if !result
      BoatingTest.new(student, test_name, test_status = "passed", self)
    else
      result.test_status = "passed"
    end
  end


  def fail_student(student, test_name)
      result = BoatingTest.all.find do |boating_test|
      boating_test.student == student && boating_test.test_name == test_name
      end
      if !result
        BoatingTest.new(student, test_name, test_status = "failed", self)
      else
        result.test_status = "failed"
      end
  end

end
