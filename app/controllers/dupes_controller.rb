class DupesController < ApplicationController
  
  def create
    @dupe = Dupe.create(
      primary_id: params[:primary_id],
      secondary_id: params[:secondary_id]
      )
    flash[:success] = "Dupe Added"
    redirect_to '/'
  end 

end
