class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def self.pass_student(first_name, boating_test)
    test_to_update = BoatingTest.all.find {|bt| bt.student.first_name == first_name && bt.status != "passed"}
    test_to_update.status = "passed"
  end

  def self.fail_student(first_name, boating_test)
    test_to_update = BoatingTest.all.find {|bt| bt.student.first_name == first_name && bt.status != "failed"}
    test_to_update.status = "failed"
  end

end
