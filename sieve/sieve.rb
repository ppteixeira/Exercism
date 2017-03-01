module BookKeeping
  VERSION = 1
end

class Sieve
  attr_reader :list

  def initialize(given_number)
    @list = Hash[(2..given_number).map {|num| [num , "unchecked"] }]
  end

  def define_list
    list.each do |key,value|
      count = 0
      loop do
        result = (key**2) + (count * key)
        list[result] = 'checked' if list.has_key?(result)
        count += 1
        break if result >= list.length
      end
    end
  end

  def primes
    # make sure to define the correct values of the list first
    define_list

    #Returns an array with all keys with values == "unchecked"
    list.select {|k,v| v == "unchecked"}.keys.to_a
  end
end
