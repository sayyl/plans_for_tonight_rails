class CategoriesController < ApplicationController
  
  def index
    # @categories = Category.all
  end

  def show
    @category = Category.find(params[:name])
  end

  def new
    @category = Category.new
  end

  def create 
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end

  def edit
  end

  protected

  def category_params 
    params.require(:category).permit(:name, :description, :remote_image_url)
  end
end
