class Element
  def initialize(value=nil)
    @next = nil
    @value = value
  end

  attr_reader :next
end
