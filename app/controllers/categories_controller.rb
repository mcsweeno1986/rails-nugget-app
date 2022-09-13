class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @categories = Category.find(params[:id])
  end

  def new
    @categories = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to category_path(@category)
  end

  private

  def category_params
    params.require(:category).permit(:name, :location, :rating, :review)
  end

end
