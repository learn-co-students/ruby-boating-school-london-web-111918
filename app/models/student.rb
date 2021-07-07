class Student

  attr_accessor :first_name, :boating_test, :status, :instructor

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(boating_test, status, instructor)
    BoatingTest.new(self, boating_test, status, instructor)
  end

  def self.find_student(first_name)
    Student.all.find {|student| student.first_name == first_name}
  end

  def grade_percentage
    passed_count = BoatingTest.all.select {|student| student.status == "passed"}.count
    total_tests_taken = BoatingTest.all.select {|student| student.status != "pending"}.count
    grade_percentage = ((passed_count.to_f/total_tests_taken.to_f)*100)
    puts "#{grade_percentage}%"
  end

end
