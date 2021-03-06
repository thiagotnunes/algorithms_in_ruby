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

  def extract_dominant
    swap(0, @heap.size - 1)
    dominant = @heap.pop
    bubble_down(0)
    dominant
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

  def dominant_from(current, left, right)
    dominant = current
    if dominates(@heap[left], @heap[dominant])
      dominant = left 
    end
    if dominates(@heap[right], @heap[dominant])
      dominant = right
    end
    dominant
  end

  def swap(first, second)
    @heap[first], @heap[second] = @heap[second], @heap[first]
  end
end
