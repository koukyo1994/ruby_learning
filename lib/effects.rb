module Effects
  def self.reverse
    lambda do |words|
      words.split(' ').map(&:reverse).join(' ')
    end
  end

  def self.echo n
    lambda do |words|
      words.chars.map { |c| c == ' ' ? c : c * n }.join
    end
  end

  def self.loud n
    lambda do |words|
      words.split(' ').map { |w| w.upcase + '!' * n }.join(' ')
    end
  end
end
