def judge age
  adult = Proc.new { |n| n > 20 }
  child = Proc.new { |n| n < 20 }

  case age
  when adult
    '大人です'
  when child
    '子供です'
  else
    '二十歳です'
  end
end

def generate_proc array
  counter = 0
  Proc.new do
    counter += 10
    array << counter
  end
end

def proc_return
  f = Proc.new { |n| return n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

def lambda_return
  f = -> (n) {return n * 10}
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

def proc_break
  f = Proc.new { |n| break n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

def lambda_break
  f = ->(n) { break n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end
