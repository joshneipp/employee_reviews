require 'minitest/autorun'
require 'minitest/pride'
require './employee_reviews.rb'

class EmployeeReviewsTest < Minitest::Test

  def test_new_department
    assert Department.new(name = "")
    assert_raises(ArgumentError) do
      Department.new
    end
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
    fun = Department.new("Fun")
    fun.add_emp(zoey)
    assert_equal [zoey], fun.employees
  end

  def test_find_name
    zoey = Employee.new("Zoey", "zoey@example.com", "555-5555", 200000)
    zoey.find_name
    assert_equal "Zoey", zoey.find_name
  end

  def test_find_salary
    zoey = Employee.new("Zoey", "zoey@example.com", "555-5555", 200000)
    zoey.find_salary
    assert_equal 200000, zoey.find_salary
  end

  def test_find_dept_name
    fun = Department.new("Fun")
    fun.find_dept_name
    assert_equal "Fun", fun.name
  end

  def test_get_all_salaries
    fun = Department.new("Fun")
    zoey = Employee.new("Zoey", "zoey@example.com", "555-5555", 200000)
    joey = Employee.new("joey", "joey@example.com", "555-5555", 100000)
    fun.add_emp(zoey)
    fun.add_emp(joey)
    fun.find_total_salaries
    assert_equal 300000, fun.find_total_salaries
  end


end
