class JobsController < ApplicationController

  def index
    @customer=Customer.find(params[:customer_id])
    @jobs=@customer.jobs.all
  end

  def new
    @customer=Customer.find(params[:customer_id])
    @job=Job.new
  end

  def create
    @customer=Customer.find(params[:customer_id])
    @job = @customer.jobs.create(jobs_params)

    redirect_to customer_job_path(@customer, @job)
  end

  def show
    @customer=Customer.find(params[:customer_id])
    @job=@customer.jobs.find(params[:id])
  end

  def edit
    @job=Job.find(params[:id])
    @customer=Customer.find(params[:customer_id])
  end

  def update
    @customer=Customer.find(params[:customer_id])
    @job=Job.find(params[:id])
    @job.update(jobs_params)

    redirect_to edit_customer_job_path(@customer, @job)
  end

  private
  def jobs_params
    params.require(:job).permit(:technician, :brand, :model_num, :serial_num, :purchase_date, :scheduled_date,
                                :description, :created_at, :updated_at, :description, :note, :warranty, :status,
                                :performed)
  end
end
