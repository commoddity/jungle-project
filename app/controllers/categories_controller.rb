class CategoriesController < ApplicationController

  def show
    @category = Category.find_by_name(params[:name])
    @products = @category.products.order(created_at: :desc)
  end

end
