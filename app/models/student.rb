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

  def add_boating_test(first_name,status,instructor)
    new_boating_test = BoatingTest.new(self, first_name, status, instructor)
  end

  def self.find_student(first_name)
    puts self.all.find {|student| student.first_name == first_name} #not clear if need to 'puts' or return
  end

  def grade_percentage
    passed_tests = 0
    total_tests = 0
    BoatingTest.all.each do |test|
      if test.student.first_name == self.first_name
        total_tests += 1
      end
      if test.student.first_name == self.first_name && test.status == "passed"
        passed_tests += 1
      end
    end
    (passed_tests.to_f / total_tests.to_f) * 100.00 #for console check
  end


end
