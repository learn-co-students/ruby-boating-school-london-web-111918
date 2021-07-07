require_relative '../config/environment.rb'

# def reload
#   load 'config/environment.rb'
# end

shangela = Student.new("Shangela")
laganga = Student.new("Laganga")


alyssa = Instructor.new("Alyssa")
latrice= Instructor.new("Latrice")

sewing_challenge = shangela.add_boating_test("sewing 101", "pending", alyssa)
testing = shangela.add_boating_test("Snatch Game 101", "passed", alyssa)
ok_mama = laganga.add_boating_test("death dropping 202", "failed", alyssa)
lip_sync_foryl = laganga.add_boating_test("Lip sync for your life", "passed", latrice)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
