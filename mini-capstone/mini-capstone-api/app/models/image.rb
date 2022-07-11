class Image < ApplicationRecord
  belongs_to :product
  ##### Replaced by "belongs_to :product"
  # def images
  #   Image.find_by(product_id: id)
  # end
end
