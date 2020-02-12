require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do

  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "The My Cart indicator updates when products are added" do
    visit root_path

    within ".products" do
      first("button").click
    end

    within "nav" do
      cart = find('a', text: 'My Cart')
      expect(cart).to have_text 'My Cart (1)'
    end
    save_screenshot
  end

end
