class Admin::SalesController < ApplicationController
  http_basic_authenticate_with :name => ENV['ADMIN_LOGIN'], :password => ENV['ADMIN_PASSWORD']

  def index
    @sales = Sale.all.order(created_at: :desc)
  end
  
  def new

  end

end
