module StringShuffle
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end

class User
  using StringShuffle

  def initialize name
    @name = name
  end

  def shuffled_name
    @name.shuffle
  end
end

begin
  puts 'Alice'.shuffle
rescue NoMethodError
  puts "****************************************"
end

user = User.new('Alice')
begin
  puts user.shuffled_name
rescue NoMethodError
  puts "****************************************"
end
