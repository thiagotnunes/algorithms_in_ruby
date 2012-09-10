class Heap

  attr_accessor :heap

  def initialize
    @heap = []
  end

  def insert(element)
    @heap << element
    bubble_up(@heap.size - 1)
    self
  end

  private

  def parent_for(current_position)
    base = (current_position - 1)
    base = 0 if base < 0
    base / 2
  end

  def left_child_for(position)
    position * 2 + 1
  end

  def right_child_for(position)
    position * 2 + 2
  end

  def bubble_up(position)
    parent = parent_for(position) 

    if (should_bubble_up(@heap[parent], @heap[position]))
      swap(position, parent)
      bubble_up(parent)
    end
  end

  def bubble_down(position)
    dominant = dominant_from(position, 
                             left_child_for(position), 
                             right_child_for(position))

    if (should_bubble_down(@heap[dominant], @heap[position]))
      swap(position, dominant)
      bubble_down(dominant)
    end
  end

  def swap(first, second)
    @heap[first], @heap[second] = @heap[second], @heap[first]
  end
end
