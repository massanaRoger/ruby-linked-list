class Node
  attr_accessor :value, :next_node
  def initialize
    @value = nil
    @next_node = nil
  end
end

class LinkedList
  def initialize
    @head = Node.new 
  end 
  
  def append(value)
    if @head.value == nil
      @head.value=(value)
      return
    end
    until @head.next_node == nil do
      @head = @head.next_node
    end
    @head.next_node = Node.new
    @head.next_node.value=(value)
  end
end
 

llista = LinkedList.new
llista.append(3)
llista.append(5)
p llista
