module BookKeeping
  VERSION = 5
end

class Gigasecond
  def self.from(given_time)
    to_time = given_time + 10**9 #1_000_000_000 
  end
end
