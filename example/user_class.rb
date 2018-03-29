class User
  attr_accessor :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.create_users names
    names.map do |name|
      User.new name, 'Julia', 10
    end
  end

  def hello
    shuffled_name = @first_name.chars.shuffle.join
    "Hello, I am #{shuffled_name}"
  end
end

class Product
  DEFAULT_PRICE = 0
  attr_reader :name, :price

  def initialize name, price=DEFAULT_PRICE
    @name = name
    @price = price
  end
end
