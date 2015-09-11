class Employee

  attr_reader :name, :email, :phone_num, :salary

  def initialize(name = "", email = "", phone_num = "", salary = 100000)
    @name = name
    @email = email
    @phone_num = phone_num
    @salary = salary
  end

  def find_name
    return self.name
  end

  def find_salary
    return self.salary
  end




end
