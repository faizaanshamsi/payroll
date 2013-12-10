class SalesController < ApplicationController
  def index
    # make your sales objects available to the correlating view here
    @sales = Sale.new
    # binding.pry
  end
end
