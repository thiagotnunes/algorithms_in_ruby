module Heap
  def parent_for(current_position)
    base = (current_position - 1)
    base = 0 if base < 0
    base / 2
  end

  def bubble_up(position, array)
    parent = parent_for(position) 
    if (array[position] <= array[parent])
      return array
    end

    swap(array, position, parent)
    bubble_up(parent, array)
  end

  def swap(array, position, parent)
    array[position], array[parent] = array[parent], array[position]
  end
end
