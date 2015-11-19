class HomesController < ApplicationController
  def index
    @jobs=Job.where.not(jobs: {scheduled_date: nil}).references(:jobs)
  end

  def new
    @customer=Customer.new
    @customer.jobs.build
  end

  def create
    @customer=Customer.create(customer_params)
    @customer.jobs.create(jobs_params)

    redirect_to customers_path
  end


  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :phone_num, :phone_num2, :address)
  end

  private
  def jobs_params
    params.require(:job).permit(:technician, :brand, :model_num, :serial_num, :purchase_date, :scheduled_date,
                                :description, :created_at, :updated_at, :description, :note, :warranty, :status,
                                :performed)
  end

end
