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

  def swap(first, second)
    @heap[first], @heap[second] = @heap[second], @heap[first]
  end
end

class MinHeap < Heap
  def extract_min
    swap(0, @heap.size - 1)
    min = @heap.pop
    bubble_down(0, @heap)
    min
  end

  private

  def bubble_down(position, array)
    left_child = position * 2 + 1
    right_child = position * 2 + 2

    min = position
    min = left_child if !array[left_child].nil? && array[min] > array[left_child]
    min = right_child if !array[right_child].nil? && array[min] > array[right_child]

    if (should_bubble_down(array[min], array[position]))
      swap(position, min)
      bubble_down(min, array)
    end
  end

  def should_bubble_up(parent, current)
    parent > current
  end

  def should_bubble_down(min, current)
    min < current
  end

end

