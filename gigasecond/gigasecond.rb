module BookKeeping
  VERSION = 5
end

class Gigasecond
  def self.from(from_time)
    to_time = from_time + 100_0000_000
    return to_time
  end
end
