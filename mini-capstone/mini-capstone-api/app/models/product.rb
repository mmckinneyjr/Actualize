class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true, length: { minimum: 10, maximum: 500 }

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

  def supplier
    Supplier.find_by(id: supplier_id)
  end
end
