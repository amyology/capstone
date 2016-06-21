class TagsController < ApplicationController


  def index
    @tags = Tag.all
  end

  def create
    @tag = Tag.create(
      user_id: current_user.id,
      dupe_id: params[:dupe_id],
      text: params[:text]
      )
    flash[:success] = "Tag Added"
    redirect_to request.referer
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.update(
      user_id: current_user.id,
      dupe_id: params[:dupe_id],
      text: params[:text]
      )
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    flash[:success] = "Tag Deleted"
    redirect_to "/tags"
  end

end
