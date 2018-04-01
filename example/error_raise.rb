def currency_of country
  case country
  when :Japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise "無効な国名です。 #{country}"
  end
end

puts currency_of(:Japan)
puts currency_of(:italy)
