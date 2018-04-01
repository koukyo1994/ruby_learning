def greeting &block
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

greeting do |text|
  text * 2
end
