#Unbalanced punctuation
class Stack

  def initialize
    @stack = []
  end

  def match_punctuation(str)
    lsym = "{[(<"
    rsym = "}])>"
    str.each_char do |sym|
      if lsym.include? sym
        @stack << sym
      elsif rsym.include? sym
        top = @stack.last
        if top == nil
          return false
        end
        # puts sym
        # puts lsym.index(top)
        # puts rsym.index(sym)
        if lsym.index(top) != rsym.index(sym)
          return false
        else
          @stack.pop
        end
        #Ignore non-grouped characters
      end
    end
    return @stack.empty?
  end

end


str1 = "[((a-b))"
new_stack = Stack.new
puts new_stack.match_punctuation(str1)
