class EmployeesController < ApplicationController
  def index
    # make your employee objects available to the correlating view here
    @company = Company.new('db/data/employees.csv')

    @people = []

    @company.data.each do |x|
      @people << @company.assemble_human_bots(x)
    end
    @people
  end
end
