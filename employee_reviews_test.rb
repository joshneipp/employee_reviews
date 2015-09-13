require 'minitest/autorun'
require 'minitest/pride'
require './employee_reviews.rb'
require 'byebug'

class EmployeeReviewsTest < Minitest::Test

  def test_new_department
    assert Department.new(name: "Fun")
  end

  def test_new_employee
    assert Employee.new(name = "", email = "", phone_num = "", salary = Fixnum)
    employee = Employee.new("Josh", "joshneipp@example.com", "555-5555", 100000)
    assert_equal "Josh", employee.name
    assert_equal "joshneipp@example.com", employee.email
    assert_equal "555-5555", employee.phone_num
    assert_equal 100000, employee.salary
  end

  def test_add_employee_to_department
    zoey = Employee.new("Zoey", "zoey@example.com", "555-5555", 200000)
    fun = Department.new(name: "Fun")
    fun.add_emp(zoey)
    assert_equal [zoey], fun.employees
  end

  def test_find_name
    assert_equal "Zoey", Employee.new("Zoey").name
  end

  def test_find_salary
    zoey = Employee.new("Zoey", "zoey@example.com", "555-5555", 200000)
    assert_equal 200000, zoey.salary
  end

  def test_find_dept_name
    fun = Department.new(name: "Fun")
    fun.find_dept_name
    assert_equal "Fun", fun.name
  end

  def test_get_all_salaries
    fun = Department.new(name: "Fun")
    zoey = Employee.new("Zoey", "zoey@example.com", "555-5555", 200000)
    joey = Employee.new("joey", "joey@example.com", "555-5555", 100000)
    fun.add_emp(zoey)
    fun.add_emp(joey)
    fun.find_total_salaries
    assert_equal 300000, fun.find_total_salaries
  end

  def test_review_text
    some_text = "Review text for Zoey"
    assert_equal some_text, Employee.new.review_text("Review text for Zoey")
  end

  def test_employee_is_satisfactory?
    zoey = Employee.new
    joey = Employee.new
    zoey.review_score(7)
    joey.review_score(5)
    assert zoey.satisfactory?
    refute joey.satisfactory?
  end

  def test_employee_raise
    zoey = Employee.new("Zoey", "zoey@example.com", "555", 100)
    zoey.gets_raise(20)
    assert_equal zoey.salary, 120
  end

  def test_department_raise
    fun = Department.new(name: "Fun")
    zoey  = Employee.new("Zoey",  "zoey@example.com",  "555-5555", 200000)
    joey  = Employee.new("Joey",  "joey@example.com",  "555-5556", 80000)
    sammy = Employee.new("Sammy", "sammy@example.com", "555-5557", 400000)
    fun.add_emp(zoey)
    fun.add_emp(joey)
    fun.add_emp(sammy)
    zoey.review_score(6)
    joey.review_score(3)
    sammy.review_score(9)
    fun.give_department_raise(5000) { |x| x.salary < 300000 }
    assert_equal zoey.salary, 202500
    assert_equal sammy.salary, 400000
    assert_equal joey.salary, 82500
  end
end
