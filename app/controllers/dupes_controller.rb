class DupesController < ApplicationController

  def index
  
  end

  def show
    @dupe = Dupe.find(params[:id])
    @tags = @dupe.tags
  end

  def create
    @dupe = Dupe.create(
      primary_id: params[:primary_id],
      secondary_id: params[:secondary_id]
      )
    flash[:success] = "Dupe Added"
    redirect_to request.referer
  end

end
