class Student
    attr_accessor :student, :test_name, :test_status, :instructor

    @@all = []

    def initialize(student)
      @student = student
      @@all << self
    end

    def self.all
      @all
    end

    def add_boating_test(test_name, test_status, instructor)
      BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(input)
      self.all.find do |person| person.student == input
      end
    end

    def grade_percentage
      fail_pass = BoatingTest.all.select do |test| test.student == self
      end
      passed_tests = fail_pass.select do |test| test.test_status == "passed"
      end
      grade = (passed_tests.length.to_f)/(fail_pass.length.to_f)*100.to_f
      return grade
    end
end
