class Owner < QuotaSalesPerson
  attr_accessor :name, :annual_base_salary, :owner_threshold, :commission_paid, :bonus, :quota
  def initialize(name, annual_base_salary, bonus, quota)
    super(name, annual_base_salary, bonus, quota)
  end

  def owner_threshold(gross_monthly_sales)
    @owner_threshold = gross_monthly_sales
  end

  def commission_paid
    if @owner_threshold >= @quota
      @commission_paid = @bonus
    else
      @commission_paid = 0
    end
  end
end
