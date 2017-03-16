module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth(number)
    raise ArgumentError if number == 0
    prime_count = 0
    divisor = 2
    begin
      prime_count += 1 if is_prime?(divisor)
      return divisor if prime_count == number
      divisor += 1
    end while true
  end

  def self.is_prime?(divisor)
    total_divisors = 0
    (2..divisor).each do |x|
      total_divisors += 1 if divisor % x == 0
      return false if total_divisors > 1
    end
    true
  end
end
