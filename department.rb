class Department

  attr_reader :name, :employees

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
    self.employees.each do |i|
      total_salaries += i.salary
    end
    return total_salaries
  end
end
