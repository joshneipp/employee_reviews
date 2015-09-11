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

end
