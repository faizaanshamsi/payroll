class Employee
  attr_accessor :name, :annual_base_salary, :monthly_base_salary, :gross_monthly_salary, :net_monthly_salary
  def initialize(name, annual_base_salary)
    @name = name
    @annual_base_salary = annual_base_salary
    @monthly_base_salary = annual_base_salary.to_i / 12
  end

  def gross_monthly_salary
    @gross_monthly_salary = @monthly_base_salary
  end

  def net_monthly_salary
    @gross_monthly_salary * 0.7
  end
end
