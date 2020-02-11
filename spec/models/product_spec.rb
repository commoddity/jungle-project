require 'rails_helper'

RSpec.describe Product, type: :model do
describe 'Validations' do

    it "is valid with valid attributes" do
      category = Category.new(name: "Furniture")
      product = Product.new(name: "Whatever", price: 365, quantity: 43, category: category)
      expect(product).to be_valid
    end

    it "is not valid without a name" do
      category = Category.new(name: "Furniture")
      product = Product.new(name: nil, price: 365, quantity: 43, category: category)
      expect(product).to_not be_valid
    end

    it "is not valid without a price" do
      category = Category.new(name: "Furniture")
      product = Product.new(name: "Whatever", price: nil, quantity: 43, category: category)
      expect(product).to_not be_valid
    end

    it "is not valid without a quantity" do
      category = Category.new(name: "Furniture")
      product = Product.new(name: "Whatever", price: 365, quantity: nil, category: category)
      expect(product).to_not be_valid
    end

    it "is not valid without a category" do
      category = Category.new(name: "Furniture")
      product = Product.new(name: "Whatever", price: 365, quantity: 43, category: nil)
      expect(product).to_not be_valid
    end

  end
end
