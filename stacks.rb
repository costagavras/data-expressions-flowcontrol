#Unbalanced punctuation
# class Stack
#
#   def initialize
#     @store = []
#   end
#
#   def push(x)
#     @store.push x
#   end
#
#   def pop
#     @store.pop
#   end
#
#   def peek
#     @store.last
#   end

  def match_punctuation(str)
    stack = []
    lsym = "{[(<"
    rsym = "}])>"
    str.each_char do |sym|
      if lsym.include? sym
        stack << sym
      elsif rsym.include? sym
        top = stack.last
        if top == nil
          return false
        end
        # puts sym
        # puts lsym.index(top)
        # puts rsym.index(sym)
        if lsym.index(top) != rsym.index(sym)
          return false
        else
          stack.pop
        end
        #Ignore non-grouped characters
      end
    end
    return stack.empty?
  end

# end


str1 = "[((a-b))]"
puts match_punctuation(str1)
