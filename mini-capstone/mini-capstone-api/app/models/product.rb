class Product < ApplicationRecord
  has_many :images
  has_many :orders, through: :carted_products
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  belongs_to :supplier

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true, length: { minimum: 10, maximum: 500 }

  # def categories
  #   category_products.map do |category_product|
  #     category_product.category_product
  #   end
  # end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    return price < 10 ? true : false
  end

  def tax
    return (price * 0.09).round(2)
  end

  def total
    return tax + price
  end

  ##### replaced by "belongs_to :supplier"
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  ##### replaced by "has_many :images"
  # def images
  #   Image.where(product_id: id)
  # end
end
