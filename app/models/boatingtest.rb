class BoatingTest

  attr_accessor :test, :instructor, :status, :student

  @@all = []

  def initialize(student, test, status, instructor)
    @test = test
    @status = status
    @instructor = instructor
    @student = student
    self.class.all << self
  end

  def self.all
    @@all
  end

end
