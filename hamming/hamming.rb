module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(first = '', second = '')
    if first.length != second.length
      raise ArgumentError
    elsif first == second
      return 0
    else
      different = 0
      for i in 0...first.length
        if first[i] != second[i]
          different += 1
        end
      end
      return different
    end
  end
end
