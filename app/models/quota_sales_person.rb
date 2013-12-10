class QuotaSalesPerson < SalesPerson

  attr_accessor :name, :annual_base_salary, :bonus, :quota, :commission_paid, :gross_monthly_sales
  def initialize(name, annual_base_salary, bonus, quota)
    super(name, annual_base_salary)
    @bonus = bonus
    @quota = quota
  end

  def commission_paid
    if @gross_monthly_sales >= @quota
      @commission_paid = @bonus
    else
      @commission_paid = 0
    end
  end
end
