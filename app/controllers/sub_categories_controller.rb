class SubCategoriesController < ApplicationController
  before_action :set_sub_category, only: [:show, :edit, :update, :destroy]
  before_action :set_category, only: [:new, :create]

  def index
    @sub_categories = SubCategory.all
  end

  def show
    @category = Category.find(params[:category_id])
  end

  def new
    @category = Category.find(params[:category_id])
    @sub_categories = SubCategory.new
  end

  def create
    # @category = Category.find(params[:category_id])
    @sub_category = SubCategory.new(sub_category_params)
    @sub_category.category = @category
    @sub_category.save
    redirect_to category_path(@category)
  end

  def edit
  end

  def update
    @sub_category.update(sub_category_params)
    redirect_to new_category_sub_category_path(@sub_categories)
  end

  def destroy
    @sub_category.destroy
    redirect_to new_category_sub_category_path, status: :see_other
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def sub_category_params
    params.require(:sub_category).permit(:name, :location, :rating, :review)
  end

  def set_sub_category
    @sub_category = SubCategory.find(params[:id])
  end
end
