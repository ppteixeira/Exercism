module BookKeeping
  VERSION = 2
end

#--------------------------- First Implementation ----------------
# class RunLengthEncoding
#   def self.encode(text)
#     sum = Hash.new(0)
#     result = ''
#     char = ''
#     text = text.split('')
#
#     text.each_with_index do |letter , index|
#       if index == 0 then char = letter end
#
#       if letter == char
#         sum[letter] += 1
#       else
#         result << sum.values[0].to_s if sum.values[0] > 1 && sum.keys[0] != ' '
#         sum.keys[0] == ' ' ? result << sum.keys[0] * sum.values[0] : result << sum.keys[0]
#         sum.clear
#         char = letter
#         sum[letter] += 1
#       end
#
#       if index == text.length-1
#         result << sum.values[0].to_s if sum.values[0] > 1 && sum.keys[0] != ' '
#         sum.keys[0] == ' ' ? result << sum.keys[0] * sum.values[0] : result << sum.keys[0]
#       end
#     end
#     result
#   end
#
#   def self.decode(text)
#     text = text.scan(/\p{L}|\d+|\s|\p{Any}/)
#     text.each_with_index.map do |char,index|
#       if index > 0 && /[[:digit:]]/ === text[index-1]
#          previous = text[index-1].to_i
#       else
#          previous = 1
#       end
#       char * previous if /[[:alpha:]]|\s|\p{S}/ === char
#     end.join
#   end
# end

#-------------------------- Second Implementation ----------------------
class RunLengthEncoding
    def self.encode(input)
        input.gsub /(.)\1+/ do |t|
            binding.pry
            t.length.to_s + t[0]
        end
    end

    def self.decode(input)
        input.gsub /\d+./ do |t|
            chara = t[-1]
            t.chop!
            chara * t.to_i
        end
    end

end
