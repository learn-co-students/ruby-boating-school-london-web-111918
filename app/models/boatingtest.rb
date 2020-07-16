class BoatingTest

  attr_accessor :status
  attr_reader :student, :name, :instructor

  @@all = []
  def initialize(student, name, status, instructor)
    @student = student
    @name = name
    @status = status
    @instructor = instructor
    self.class.all << self
  end

  def self.all
    @@all
  end

end
