class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(distance)
    counter = 0
    hamming_distance = 0

    while counter < strand.size && counter < distance.size
      if strand[counter] == distance[counter]
        counter +=1
      else
        hamming_distance += 1
        counter +=1
      end  
    end
    p hamming_distance
  end
end

test = DNA.new('GGACG')

test.hamming_distance('GGTCG')