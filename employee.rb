class Employee
attr_reader :name, :email, :phone_num, :salary, :input

  def initialize(name = "", email = "", phone_num = "", salary = 100000)
    @name = name
    @email = email
    @phone_num = phone_num
    @salary = salary

  end

  def find_name
    self.name
  end

  def find_salary
    self.salary
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
end
