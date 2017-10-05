module BookKeeping
  VERSION = 3
end

class Hamming

  def self.compute(dna_strand1, dna_strand2)
    new(dna_strand1, dna_strand2).compute
  end

  attr_reader :strand1_nucleotides, :strand2_nucleotides

  def initialize(dna_strand1, dna_strand2)
    @strand1_nucleotides = dna_strand1.chars
    @strand2_nucleotides = dna_strand2.chars
    validate
  end

  def compute
    merged_strands.count do |strand1_nucleotide, strand2_nucleotide|
      strand1_nucleotide != strand2_nucleotide
    end
  end

  private
    def merged_strands
      strand1_nucleotides.zip(strand2_nucleotides)
    end

    def validate
      raise ArgumentError if uneven_strand_sizes?
    end

    def uneven_strand_sizes?
      strand1_nucleotides.size != strand2_nucleotides.size
    end
end
