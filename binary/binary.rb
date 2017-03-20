module BookKeeping
  VERSION = 3
end

class Binary
  def self.to_decimal(arg)
    raise ArgumentError if arg =~ /[^0-1]/
    arg.reverse.split('').each_with_index.map do |element , index|
      element == '1' ? 2**index : 0
    end.reduce(:+)
  end
end
