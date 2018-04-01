module NameChanger
  def change_name
    self.name = 'アリス'
  end
end

class User
  include NameChanger
  attr_accessor :name

  def initialize name
    @name = name
  end
end

alice = User.new('Alice')
puts alice.name
alice.change_name
puts alice.name
