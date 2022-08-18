class Node
  attr_accessor :value, :next_node
  def initialize
    @value = nil
    @next_node = nil
  end
end

class LinkedList
  attr_reader :size
  attr_reader :head
  def initialize
    @head = Node.new 
    @size = 0
  end 
  
  def append(value)
    @size += 1
    if @head.value == nil
      @head.value=(value)
      return
    end
    aux = @head
    until aux.next_node == nil do
      aux = aux.next_node
    end
    aux.next_node = Node.new
    aux.next_node.value=(value)
  end

  def prepend(value)
    @size += 1
    if @head.value == nil
      @head.value=(value)
      return
    end
    nou_node = Node.new
    nou_node.value=(value)
    nou_node.next_node=(@head)
    @head = nou_node
  end

  def tail
    aux = @head
    until aux.next_node == nil do
      aux = aux.next_node
    end
    return aux
  end
end
 

llista = LinkedList.new
llista.append(3)
llista.append(6)
llista.append(9)
llista.append(8)
llista.prepend(5)
p llista.head
p llista.tail
