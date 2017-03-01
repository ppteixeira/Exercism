module BookKeeping
  VERSION = 4
end

class Pangram
  def self.pangram?(phrase)
    return false if phrase.empty?
    pangram = nil
    ('a'..'z').map { |letter| pangram = false if !phrase.downcase.include? letter }
    pangram.nil? ? true : false
  end
end
