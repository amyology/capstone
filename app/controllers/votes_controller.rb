class VotesController < ApplicationController

  def create
    @vote = Vote.create(
      user_id: current_user.id,
      dupe_id: params[:dupe_id]
      )
    flash[:success] = "Vote Added"
    redirect_to request.referer
  end
end
