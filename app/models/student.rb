class Student

  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_student(student_name)
    self.all.find {|student| student.name == student_name}
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  def grade_percentage
    tests = BoatingTest.all.select {|test| test.student == self}
    passed_tests = tests.select {|test| test.status == "passed"}
    (passed_tests.length.to_f / tests.length.to_f) * 100.to_f
  end

end
