module BookKeeping
  VERSION = 1
end

class Phrase
  attr_reader :string
  def initialize(string)
    @string = string
  end

  def word_count
    words = @string.scan(/\b\S+\b/).map { |item| item.split(',')}.flatten

    total = Hash.new(0)
    words.each do |word|
      total[word.downcase] += 1
    end
    show_result(total)
  end

  def show_result(total)
    total.each do |key,value|
      puts "#{key}: #{value}"
    end
  end
end
