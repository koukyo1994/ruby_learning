begin
  1 / 0
rescue => e
  puts "Error Class #{e.class}"
  puts "Error Message #{e.message}"
  puts "Back Trace -----------"
  puts e.backtrace
  puts "-------"
end
