class Instructor

  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def pass_student(name, test)
    BoatingTest.all.each do |boat_test|
       # binding.pry
      if boat_test.student.name == name && boat_test.test == test
        boat_test.status = "passed"
      else
        boat_test = BoatingTest.new(name, test, "passed", self)
      end
      return boat_test
    end
  end

  def fast_student(name, test)
    BoatingTest.all.each do |boat_test|
       # binding.pry
      if boat_test.student.name == name && boat_test.test == test
        boat_test.status = "failed"
      else
        boat_test = BoatingTest.new(name, test, "failed", self)
      end
      return boat_test
    end
  end

end
