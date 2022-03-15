class Product < ApplicationRecord

  # def time_change
  #   new_update = product.updated_at.strftime("%b %e, %l:%M %p")
  # end

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
