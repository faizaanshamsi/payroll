class Sale
  @sales_data = []
  attr_accessor :sales_data, :gross_monthly_sales
  def initialize
    #create a array of sales from csv
    @sales_data = self.class.load_sales
  end

  def self.load_sales
    @sales = []
    CSV.foreach("db/data/sales.csv", headers:true) do |row|
      sale = row.to_hash
      @sales << sale
    end
    @sales
  end
end
