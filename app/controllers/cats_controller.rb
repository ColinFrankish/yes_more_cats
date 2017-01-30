class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save cat_params
      redirect_to cats_path
    else
      redirect_to new_cat_path
    end
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update(cat_params)
      redirect_to cats_path
    else
      redirect_to new_cat_path
    end
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy!
    redirect_to cats_path
  end

  private def cat_params
    params.require(:cat).permit(:name, :description)
  end

end
