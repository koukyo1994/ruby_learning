module Greeting
  def hello
    'hello.'
  end
end

module Aisatsu
  include Greeting

  def konnichiwa
    'こんにちは'
  end
end

class User
  include Aisatsu
end

user = User.new
puts user.hello
puts user.konnichiwa
