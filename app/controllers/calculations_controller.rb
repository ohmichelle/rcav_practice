class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def sqrt
    @the_number = params["zebra"].to_f
    @the_sqrt = @the_number**0.5
  end

  def random
    @min = params["min"].to_i
    @max = params["max"].to_i
    @random_num = rand(@min..(@max+1))
  end

  def payment
    # Parameters: {"rate"=>"34", "years"=>"60", "principal"=>"30000"}
    @apr = params["rate"].to_f / 10
    @years = params["years"].to_f
    @principal = params["principal"].to_f

    rate = (@apr/12)/100 #monthly interest rate
    months = @years*12 #number of monthly payments

    @monthly_payment = (rate*@principal)/(1-(1+rate)**(months*-1))
  end
end
