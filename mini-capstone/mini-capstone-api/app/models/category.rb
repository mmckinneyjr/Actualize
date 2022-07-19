class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products

  # def category
  #   category_products.map do |category_product|
  #     category_product.category_product
  #   end
  # end
end
