class BoatingTest

  attr_accessor :student, :boating_test, :status, :instructor

  @@all = []

  def initialize(student, boating_test, status, instructor)
    @student = student
    @boating_test = boating_test
    @status = status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

end
