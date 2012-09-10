class MaxHeap < Heap
  def extract_max
    swap(0, @heap.size - 1)
    max = @heap.pop
    bubble_down(0)
    max
  end

  private

  def dominates(first, second)
    !first.nil? && first > second
  end

  def should_bubble_up(parent, current)
    parent < current
  end

  def should_bubble_down(child, current)
    child > current
  end
end
