class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
    @customer.build_address
  end

  def create
    puts customer_params
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to customers_path
    else
      render :new
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :phone, address_attributes: [
      :id, :street, :number, :city
    ])
  end
end
