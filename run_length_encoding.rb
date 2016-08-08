class RunLengthEncoding
  def self.encode(input)
    output = ''
    input.chars.chunk{|c| c}.map{|c, a| [c, a.size]}.each do |subarr|
      subarr[1] > 1 ? output << subarr[1].to_s << subarr[0] : output << subarr[0]
    end
    output
  end

  def self.decode(input)
    output = input.gsub(/\d+\D/) {|char| char[-1] * char.to_i}
    output
  end
end