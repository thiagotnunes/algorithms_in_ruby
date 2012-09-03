module Heap
  def parent_for(current_position)
    base = (current_position - 1)
    base = 0 if base < 0
    base / 2
  end
end
