class SubCategoriesController < ApplicationController
  before_action :set_sub_category, only: [:show, :edit, :update, :destroy]

  def index
    @sub_categories = SubCategory.all
  end

  def show
  end

  def new
    @Sub_categories = SubCategory.new
  end

  def create
    @sub_category = SubCategory.new(sub_category_params)
    @sub_category.save
    redirect_to sub_category_path(@sub_category)
  end

  def edit
  end

  def update
    @sub_category.update(sub_category_params)
    redirect_to sub_category_path(@sub_category)
  end

  def destroy
    @sub_category.destroy
    redirect_to sub_categories_path, status: :see_other
  end

  private

  def sub_category_params
    params.require(:category).permit(:name, :location, :rating, :review)
  end

  def set_sub_category
    @sub_category = SubCategory.find(params[:id])
  end
end
