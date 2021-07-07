class Student

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
  end

  def self.find_student(name)
    self.all.find {|student| student.name == name}
  end

  def grade_percentage
    all_tests = BoatingTest.all.select {|test| test.student == self}
    passed_tests = all_tests.select {|test| test.status == "passed"}
    grade = (passed_tests.length.to_f / all_tests.length.to_f) * 100.to_f
    return "#{grade}%"
  end

end
