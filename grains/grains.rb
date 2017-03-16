module BookKeeping
  VERSION = 1
end

class Grains
  def self.square(number)
    raise ArgumentError if number < 1 || number > 64
    2**(number-1)
  end

  def self.total
    total = 0
    (1..64).each { |number| total += square(number) }
    total
  end
end
