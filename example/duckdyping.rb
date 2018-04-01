module Taggable
  def price_tag
    "#{price}円"
  end
end

class Product
  include Taggable

  def price
    1000
  end
end
