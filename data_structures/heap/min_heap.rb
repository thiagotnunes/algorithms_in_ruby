class MinHeap < Heap
  alias :extract_min :extract_dominant

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
