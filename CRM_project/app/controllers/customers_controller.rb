class CustomersController < ApplicationController
  def index
    @customers=Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer=Customer.create(customer_params)

    redirect_to customers_path
  end

  def show
    @customer=Customer.find(params[:id])
  end

  def update
    @customer=Customer.find(params[:id])
    @customer.update(customer_params)

    redirect_to edit_customer_path(@customer)
  end

  def edit
    @customer=Customer.find(params[:id])

  end

  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :phone_num, :phone_num2, :address,
                                      jobs_attributes: [:technician, :brand, :model_num, :serial_num, :purchase_date, :scheduled_date,
                                                                  :description, :created_at, :updated_at, :description, :note, :warranty, :status,
                                                                  :performed])
  end

end
