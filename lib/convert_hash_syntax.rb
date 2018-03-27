def convert_hash_syntax old_syntax
  regex = /:(\w+)\s*=>\s*([':]?\w+'?)/
  old_syntax.gsub regex, '\1: \2'
end
