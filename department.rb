#require './employee'

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
    self.employees.each do |i|
      total_salaries += i.find_salary
    end
    return total_salaries
  end

  def deserving_employees
    @worthy_employees = []  #This is a horrible name for any variable.
    self.employees.each do |e|
      if e.satisfactory?
        @worthy_employees << e
      else
        false
      end
    end
    return @worthy_employees
  end

  def give_department_raise(dollars)
    raise_each = dollars / self.deserving_employees.length
    self.deserving_employees.each { |x| x.gets_raise(raise_each) }
  end

  # def gets_raise(dollars)
  #   num_raises = 0
  #   self.employees.each do |e|
  #     if e.satisfactory?
  #       num_raises += 1
  #     end
  #   end
  #   raise_each = dollars / num_raises
  #   puts raise_each
  #   self.employees.each do |i|
  #     if i.satisfactory? do
  #       i.salary += raise_each
  #       puts raise_each
  #       puts i.salary
  #     end
  #       puts raise_each
  #     else
  #       puts "not #{i.name}"
  #       puts "not #{i.salary}"
  #     end
  #   end
  # end


end
