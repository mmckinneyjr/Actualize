class Supplier < ApplicationRecord
  has_many :products
  ##### Replaced by "has_many :products"
  # def products
  #   Product.where(supplier_id: id)
  # end
end
