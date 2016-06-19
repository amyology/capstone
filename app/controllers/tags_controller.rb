class TagsController < ApplicationController

  def create
    @tag = Tag.create(
      user_id: current_user.id,
      dupe_id: params[:dupe_id],
      text: params[:text]
      )
    flash[:success] = "Tag Added"
    redirect_to request.referer
  end

end
