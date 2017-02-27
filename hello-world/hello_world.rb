# My Previous solution
# class HelloWorld
#   def self.hello(*arg)
#     if arg.length < 1
#       "Hello, World!"
#     else
#       "Hello, #{arg.first}!"
#     end
#   end
# end

class HelloWorld
  def self.hello(name = "")
      name.empty? ? "Hello, World!" : "Hello, #{name}!"
  end
end
