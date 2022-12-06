class SubCategoriesController < ApplicationController
  before_action :set_category, only: [:show, :new, :create, :update, :destroy]
  before_action :set_sub_category, only: [:show, :edit, :update, :destroy]

  def index
    @sub_categories = SubCategory.all
    @markers = @sub_categories.geocoded.map do |sub_category|
      {
        lat: sub_category.latitude,
        lng: sub_category.longitude
      }
    end
  end

  def show
  end

  def new
    @sub_categories = SubCategory.new
  end

  def create
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
    redirect_to category_path(@category), status: :see_other
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_sub_category
    @sub_category = SubCategory.find(params[:id])
  end

  def sub_category_params
    params.require(:sub_category).permit(:name, :address, :rating, :review)
  end

end
