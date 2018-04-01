module Baseball
  class Second
    def initialize player, uniform_number
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  class Second
    def initialize digits
      @digits = digits
    end
  end
end

alice = Baseball::Second.new('Alice', 13)
time = Clock::Second.new(13)

puts alice.class
puts time.class
