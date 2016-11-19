class Node
  
  attr_accessor :next_node
  
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
  
  def value
    @value
  end
  
end
  
  