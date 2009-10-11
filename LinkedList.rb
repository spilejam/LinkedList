require "Element"

class LinkedList
  def initialize
    @index = 0
    @first = nil
  end

  def insert(value)
    if @first
      temp = @first
      while temp.next
        temp = temp.next
      end
      temp.next = Element.new(value)
    else
      @first = Element.new(value)
    end
  end

  def delete
    if @first && @first.next
      temp = @first
      while temp.next.next
        temp = temp.next
      end
      temp.next = nil
    elsif @first && !@first.next
      @first = nil
    else

    end
  end

  def showall
    ary = Array.new
    temp = @first
    while temp.next
      ary << temp.value
      temp = temp.next
    end
    return ary
  end

  def clear
    @ary.clear
    return (@ary==[] ? true : nil)
  end
end

