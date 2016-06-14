class ColorsController < ApplicationController

  def index
    @green = Color.where(name: "green")
    @red = Color.where(name: "red")
    @orange = Color.where(name: "orange")
    @purple = Color.where(name: "purple")
    @blue = Color.where(name: "blue")
    @gold = Color.where(name: "gold")
    @silver = Color.where(name: "silver")
    @bronze = Color.where(name: "bronze")
    @peach = Color.where(name: "peach")
    @white = Color.where(name: "white")
    @black = Color.where(name: "black")
  end

  def show
    @color = Color.where(name: params[:color])
  end

end
