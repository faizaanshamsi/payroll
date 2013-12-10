class SalesPerson < Employee
  attr_accessor :name, :annual_base_salary, :monthly_base_salary, :gross_monthly_salary, :net_monthly_salary
  def initialize(name, annual_base_salary)
    @name = name
    @annual_base_salary = annual_base_salary
  end

  def gross_monthly_sales(gross_monthly_sales) #attr_accessor
    @gross_monthly_sales = gross_monthly_sales # { gms => 40_000} ?
  end

  def commission_paid #Where does this come from
    @commission_paid
  end

  def gross_monthly_salary
    @gross_monthly_salary = super + @commission_paid
  end
end
