class Department

  attr_reader :name, :employees

  def initialize(name: , employees: [])
    @name = name
    @employees = employees
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

  def give_department_raise(dollars)
    employees_getting_raises = @employees.select { |i| yield(i) }
    raise_each = dollars /employees_getting_raises.length
    employees_getting_raises.each { |x| x.gets_raise(raise_each) }
  end
end
