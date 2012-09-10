class MinHeap < Heap
  def extract_min
    swap(0, @heap.size - 1)
    min = @heap.pop
    bubble_down(0)
    min
  end

  private

  def dominates(first, second)
    !first.nil? && first < second
  end

  def should_bubble_up(parent, current)
    parent > current
  end

  def should_bubble_down(min, current)
    min < current
  end
end
