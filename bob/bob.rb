class Bob
  def self.hey(text)
    if text.strip.empty?
      "Fine. Be that way!"
    elsif text == text.upcase && text =~ /[^,.!][a-zA-z]/
      "Whoa, chill out!"
    elsif text[-1] == "?"
      "Sure."
    else
      "Whatever."
    end
  end
end
