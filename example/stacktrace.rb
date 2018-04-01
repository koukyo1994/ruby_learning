def method1
  puts 'method_1 start.'
  begin
    method2
  rescue
    puts '例外が発生しました'
  end
  puts 'method_1 end.'
end

def method2
  puts 'method_2 start.'
  method3
  puts 'method_2 end.'
end

def method3
  puts 'method_3 start.'
  1 / 0
  puts 'method_3 end.'
end

method1
