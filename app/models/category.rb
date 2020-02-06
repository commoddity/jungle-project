class Category < ActiveRecord::Base

  def to_param
    name
  end

  has_many :products

end
