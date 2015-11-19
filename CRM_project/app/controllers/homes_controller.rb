class HomesController < ApplicationController
  def index
    @jobs=Job.all
  end

  def new
    
  end
end
