require './department'
require './employee'

=begin
SANITY CHECKS
fun = Department.new("Fun")
zoey  = Employee.new("Zoey",  "zoey@example.com",  "555-5555", 200000)
joey  = Employee.new("Joey",  "joey@example.com",  "555-5556", 100000)
sammy = Employee.new("Sammy", "sammy@example.com", "555-5557", 400000)
fun.add_emp(zoey)
fun.add_emp(joey)
fun.add_emp(sammy)
zoey.review_score(8)
joey.review_score(3)
sammy.review_score(9)

fun.give_department_raise(2000) { |x| x.salary < 300000 }
=end
