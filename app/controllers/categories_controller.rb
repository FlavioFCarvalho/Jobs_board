class CategoriesController < ApplicationController
  before_action :find_category, only: [:show, :edit, :update, :destroy]
  
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category, notice: "Successfully created new category"
  
    else
      render 'new'
    end
  end
 
  private
 
  def category_params
    params.require(:category).permit(:name)
  end
 
  def find_category
    @category = Category.find(params[:id])
  end


end
