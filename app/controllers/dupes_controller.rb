class DupesController < ApplicationController
  
  def create
    @id = params[:id]

    @dupe = Dupe.create(
      primary_id: params[:primary_id],
      secondary_id: params[:secondary_id]
      )
    flash[:success] = "Dupe Added"
    redirect_to "/products/#{id}"
  end 

end
