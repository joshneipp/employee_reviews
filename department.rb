require './employee'

class Department

  attr_reader :name, :employees, :raise_each

  def initialize(name)
    @name = name
    @employees = []
  end

  def add_emp(employee)
    @employees << employee
  end

  def find_dept_name
    return self.name
  end

  def find_total_salaries
    total_salaries = 0
    self.employees.each { |e| total_salaries += e.salary }
    return total_salaries
  end


  # This works for the first "give department raise" requirement 
  # def deserving_employees
  #   @worthy_employees = []  #This is a horrible name for a variable.
  #   self.employees.each do |e|
  #     if e.satisfactory?
  #       @worthy_employees << e
  #     else
  #       false
  #     end
  #   end
  #   return @worthy_employees
  # end
  #


  def give_department_raise(dollars)
    employees_getting_raises = []
    self.employees.each do |x|
      employees_getting_raises << x if x.salary < 300000
    end
    raise_each = dollars / employees_getting_raises.length
    employees_getting_raises.each { |x| x.gets_raise(raise_each) }
  end
end
