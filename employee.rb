class Employee
attr_reader :name, :email, :phone_num, :salary, :input

  def initialize(name = "", email = "", phone_num = "555", salary = 1000)
    @name = name
    @email = email
    @phone_num = phone_num
    @salary = salary
  end

  def find_name
    self.name
  end

  def find_salary
    @salary
  end

  def review_text(review = "")
    @review = review
  end

  def review_score(score)
    @score = score
  end

  def satisfactory?
    Employee.new.review_score(@score) > 5 ? true : false
  end

  def gets_raise(value)
    @salary += value
  end

  # def gets_raise(percent)
  #   @salary += @salary * percent / 100
  # end

end

# josh = Employee.new("Josh", "mail", "555", 10)
# puts josh.salary
# josh.gets_raise(20)
# puts josh.salary
