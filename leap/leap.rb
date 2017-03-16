require 'pry'
module BookKeeping
  VERSION = 2
end

class Year
  def self.leap?(year)
    if year % 4 == 0
      if year % 100 == 0
        year % 400 == 0 ? true : false
      else
        true
      end
    else
      false
    end
  end
end
