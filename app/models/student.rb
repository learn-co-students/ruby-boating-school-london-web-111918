class Student
  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  # def self.find_student(first_name)
  #   chosen_one = []
  #   chosen_one << self.all.select { |student| student.first_name = first_name }
  #   chosen_one
  # end

  def self.find_student(first_name)
    @@all.select { |student| student.first_name = first_name }
  end

  def grade_percentage
    all_their_tests = BoatingTest.all.select {|boating_test| boating_test.student == self }
    passed_tests = all_their_tests.select {|boating_test| boating_test.test_status == "passed"}
    passed_tests.length.to_f / all_their_tests.length.to_f
  end
  
end
