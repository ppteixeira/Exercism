module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(entry)
    factors = [ 3, 5, 7 ]
    response = []

    factors.each do |factor|
      if entry % factor == 0
        to_be_added = check(factor)
        response << to_be_added
      end
      # Improvement:
      # response << check(factor) if entry % factor == 0
    end

    if response.empty?
      entry.to_s
    else
      response.join.to_s
    end
    # to improve:
    # response.empty? ? entry.to_s : response.join.to_s

  end

  def self.check(factor)
    case factor
      when 3 then return "Pling"
      when 5 then return "Plang"
      when 7 then return "Plong"
    end
  end

end
