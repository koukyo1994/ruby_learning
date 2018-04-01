def greeing
  puts 'おはよう'
  if block_given?
    yield
  end
  puts 'こんばんは'
end

greeing do
  puts 'こんにちは'
end

puts greeing
