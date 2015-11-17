class TechniciansController < ApplicationController

  def index
    @technicians=Technician.all
  end

  def new
    @technician=Technician.new
  end

  def create
    @technician=Technician.create(technician_params)

    redirect_to technician_path(@technician)
  end

  def show
    @technician=Technician.find(params[:id])
  end

  def edit

  end

  def update
    @technician = Technician.find(params[:id])
    @technician.update(technician_params)

    redirect_to edit_technician_path(@technician)
  end

  private
   def technician_params
    params.require(:technician).permit(:name)

  end
end
