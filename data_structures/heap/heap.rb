class Heap

  attr_accessor :heap

  def initialize
    @heap = []
  end

  def insert(element)
    @heap << element
    bubble_up(@heap.size - 1, @heap)
    self
  end

  private

  def parent_for(current_position)
    base = (current_position - 1)
    base = 0 if base < 0
    base / 2
  end

  def bubble_up(position, array)
    parent = parent_for(position) 

    if (should_bubble_up(array[parent], array[position]))
      swap(position, parent)
      bubble_up(parent, array)
    end
  end

  def swap(position, parent)
    @heap[position], @heap[parent] = @heap[parent], @heap[position]
  end
end

class MinHeap < Heap
  private

  def should_bubble_up(parent, current)
    parent > current
  end
end

