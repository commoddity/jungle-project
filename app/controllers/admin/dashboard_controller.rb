class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with :name => ENV['ADMIN_LOGIN'], :password => ENV['ADMIN_PASSWORD']

  def show
    @categories = Category.all 
    @products = Product.all.order(created_at: :desc)
    @sales = Sale.all
  end

end
