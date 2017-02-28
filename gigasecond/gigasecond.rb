module BookKeeping
  VERSION = 5
end

class Gigasecond
  def self.from(from_time)
    to_time = from_time + 1_000_000_000 # 10**9
    return to_time
  end
end
