class CommissionSalesPerson < SalesPerson
  attr_accessor :name, :annual_base_salary, :commission, :commission_paid
  def initialize(name, annual_base_salary, commission)
    super(name, annual_base_salary)
    @commission = commission #assuming commission comes in as a 0.xx format
  end

  def commission_paid
    @commission_paid = @commission * @gross_monthly_sales
  end
end
