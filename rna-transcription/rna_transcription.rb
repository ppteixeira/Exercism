module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(strand)
    result = ''
    dna_strand = strand.split('')
    dna_strand.each do |nucleotide|
      case nucleotide
      when 'G' then result << 'C'
      when 'C' then result << 'G'
      when 'T' then result << 'A'
      when 'A' then result << 'U'
      else return ''
      end
    end
    return result
  end
end
