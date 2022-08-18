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
    aux
  end

  def at(index)
    return if index > size
    aux = @head
    while index > 0 do
      aux = aux.next_node
      index -= 1
    end
    aux
  end

  def pop
    return if size == 0
    aux = @head
    until aux.next_node.next_node == nil do
      aux = aux.next_node
    end
    aux.next_node = nil
  end

  def contains?(value)
    aux = @head
    until aux.next_node == nil do
      return true if aux.value == value
      aux = aux.next_node
    end
    return true if aux.value == value
    return false
  end

  def find(value)
    return nil unless contains?(value)
    i = 0
    aux = @head
    until aux.next_node == nil do
      return i if aux.value == value 
      aux = aux.next_node
      i += 1
    end
    return i if aux.value == value
  end
end
 

llista = LinkedList.new
llista.append(3)
llista.append(6)
llista.append(9)
llista.append(8)
llista.prepend(5)
llista.pop
puts llista.find(5)
puts llista.find(9)
puts llista.find(8)
puts llista.find(6)
p llista.head
