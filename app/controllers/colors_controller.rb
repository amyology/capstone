class ColorsController < ApplicationController

  def index
    @colors = Color.all
  end

  def show
    @color = Color.find(params[:id])
    @matches = Color.where.not('red = ? AND green = ? AND blue = ?', @color.red, @color.green, @color.blue).
    where('red BETWEEN ? AND ?', @color.red - 45, @color.red + 45).
    where('green BETWEEN ? AND ?', @color.green - 45, @color.green + 45).
    where('blue BETWEEN ? AND ?', @color.blue - 45, @color.blue + 45).take(3)
  end

  def create
    @color = Color.create(
      red: params[:red],
      green: params[:green],
      blue: params[:blue]
      )
    flash[:success] = "Color Added"
    redirect_to request.referer
  end

  def edit
    @color = Color.find(params[:id])
  end

  def update
    @color = Color.find(params[:id])
    @color.update(
      red: params[:red],
      green: params[:green],
      blue: params[:blue]
      )
    flash[:success] = "Color Updated"
    redirect_to request.referer
  end

  def destroy
    @color = Color.find(params[:id])
    @color.destroy

    flash[:success] = "Color Deleted"
    redirect_to "/colors"
  end

end
