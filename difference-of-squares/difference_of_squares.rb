module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(number)
    @number = number
  end

  def sum_of_squares
    sum = 0
    (1..@number).map { |i| sum += i**2 }
    sum
  end

  def square_of_sum
    sum = 0
    (1..@number).map { |i| sum += i }
    sum = sum ** 2
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
