class Student

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test, status, instructor)
    BoatingTest.new(self, test, status, instructor)
  end

  def self.find_student(name)
    self.all.find {|n| n.name == name}
  end

  def grade_percentage
    results = Hash.new(0)
    BoatingTest.all.select {|n| results[n.status] += 1}
    var = results["passed"]
    sum = results.values.inject(0, :+)
    var.to_f / sum.to_f * 100
  end
end
