class Product < ApplicationRecord
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
end
