class Company
  @data = []
  attr_accessor :data
  def initialize(file_name)
    @data = self.class.load_employees(file_name)
  end

  def self.load_employees(file_name)
    @hash = []
    CSV.foreach(file_name, headers:true ) do |row|
      employee = row.to_hash
      @hash << employee
    end
    @hash
  end

  def assemble_human_bots(hash_employee)
    name = hash_employee['name']
    title = hash_employee['title']
    salary = hash_employee['salary']
    commission = hash_employee['commission']
    bonus = hash_employee['bonus']
    quota = hash_employee['monthly_quota']

    if title == 'owner' # type is owner
      create_owner(name, salary, bonus, quota)
    elsif title == 'quota' #type is quotasp
      create_quota_employee(name, salary, bonus, quota)
    elsif title == 'commission' #type is commissionsp
      create_commission_employee(name, salary, commission)
    else
      create_employee(name, salary)
    end
  end

  private

  def create_owner(name, salary, bonus, quota)
    Owner.new(name, salary, bonus, quota)
  end

  def create_quota_employee(name, salary, bonus, quota)
    QuotaSalesPerson.new(name, salary, bonus, quota)
  end

  def create_commission_employee(name, salary, commission)
    CommissionSalesPerson.new(name, salary, commission)
  end

  def create_employee(name, salary)
    Employee.new(name, salary)
  end
end
