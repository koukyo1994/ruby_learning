class Foo
  puts "クラス構文直下のself: #{self}"

  def self.bar
    puts "クラスメソッド内のself: #{self}"
  end

  def baz
    puts "インスタンスメソッド内のself: #{self}"
  end
end

class Product
  attr_reader :name, :price

  def initialize name, price
    @name = name
    @price = price
  end

  def self.format_price price
    "#{price}円"
  end

  def to_s
    formatted_price = Product.format_price(price)
    "name: #{name}, price: #{formatted_price}"
  end

  def ==(other)
    if other.is_a? Product
      code == other.code
    else
      false
    end
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize name, price, running_time
    super name, price
    @running_time = running_time
  end

  def to_s
    "#{super}, running_time: #{running_time}"
  end
end
