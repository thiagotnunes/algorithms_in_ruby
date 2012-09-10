class MaxHeap < Heap
  alias :extract_max :extract_dominant

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
