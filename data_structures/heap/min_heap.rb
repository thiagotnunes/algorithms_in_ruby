class MinHeap < Heap
  def extract_min
    swap(0, @heap.size - 1)
    min = @heap.pop
    bubble_down(0)
    min
  end

  private

  def dominant_from(current, left, right)
    min = current
    if !@heap[left].nil? && @heap[min] > @heap[left]
      min = left 
    end
    if !@heap[right].nil? && @heap[min] > @heap[right]
      min = right
    end
    min
  end

  def should_bubble_up(parent, current)
    parent > current
  end

  def should_bubble_down(min, current)
    min < current
  end
end
