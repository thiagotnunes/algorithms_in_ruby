class MaxHeap < Heap
  def extract_max
    swap(0, @heap.size - 1)
    max = @heap.pop
    bubble_down(0)
    max
  end

  private

  def dominant_from(current, left, right)
    max = current
    if !@heap[left].nil? && @heap[max] < @heap[left]
      max = left 
    end
    if !@heap[right].nil? && @heap[max] < @heap[right]
      max = right
    end
    max
  end

  def should_bubble_up(parent, current)
    parent < current
  end

  def should_bubble_down(child, current)
    child > current
  end
end
