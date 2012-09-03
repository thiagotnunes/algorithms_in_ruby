class Heap

  attr_reader :heap

  def self.max_heap
    new do |current, parent|
      current > parent
    end
  end

  def insert(element)
    @heap << element
    bubble_up(@heap.size - 1)
    self
  end

  private

  def initialize(&comparator)
    @heap = []
    @comparator = comparator
  end

  def parent_for(current_position)
    base = (current_position - 1)
    base = 0 if base < 0
    base / 2
  end

  def bubble_up(position)
    parent = parent_for(position) 

    if (@comparator.call(@heap[position], @heap[parent]))
      swap(@heap, position, parent)
      bubble_up(parent)
    end
  end

  def swap(array, position, parent)
    array[position], array[parent] = array[parent], array[position]
  end
end
