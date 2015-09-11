require 'minitest/autorun'
require 'minitest/pride'
require './employee_reviews'

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

end
