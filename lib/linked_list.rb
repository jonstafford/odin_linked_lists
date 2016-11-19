require_relative 'node'

class LinkedList
  
  def initialize
    @head = nil
  end
  
  #  adds a new node to the end of the list
  def append value
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      tail_node.next_node = new_node
    end
  end
  
  #adds a new node to the start of the list
  def prepend value
    @head = Node.new(value, @head)
  end
  
  # returns the total number of nodes in the list
  def size 
    count = 0
    node = @head
    while !node.nil? do
      count += 1
      node = node.next_node
    end
    count
  end
  
  # returns the first node in the list
  def head 
    @head.value
  end
  
  # returns the last node in the list
  def tail
    tail_node.value
  end
  
  private
  def tail_node 
    tail = @head
    while !tail.next_node.nil? do
      tail = tail.next_node
    end
    tail
  end
  
  def node_at(index) 
    count = 0
    node = @head
    while !(index == count) do
      count += 1
      node = node.next_node
    end
    node
  end

  public
  # returns the node at the given index
  def at(index)
    node_at(index).value
  end  
  
  # removes the last element from the list
  def pop
    # inefficient
    return nil if @head.nil?
    if @head.next_node.nil?
      result = @head.value
      @head = nil
      return result
    else
      penultimate = node_at(size - 2)
      result = penultimate.next_node.value
      penultimate.next_node = nil
      return result
    end
  end
  
  # returns true if the passed in value is in the list and otherwise returns false.
  def contains? value
    node = @head
    while !node.nil? do
      if value == node.value
        return true
      else
        node = node.next_node
      end
    end
    return false
  end
    
  # returns the index of the node containing data, or nil if not found.
  def find(data) 
    node = @head
    count = 0
    while !node.nil? do
      if data == node.value
        return count
      else
        node = node.next_node
        count += 1
      end
    end
    
    return nil
  end
  
  # represent your LinkedList objects as strings
  def to_s 
    node = @head
    s = ""
    while !node.nil? do
      s += "( #{node.value} ) -> "
      node = node.next_node
    end
    s += "nil" 
  end
  
end
  