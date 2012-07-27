#!/bin/ruby

def heapify(heap, i, length)
  largest = i
  l = 2*i + 1
  r = 2*i + 2

  if l < length && heap[l] > heap[i]
    largest = l
  end

  if r < length && heap[r] > heap[largest]
    largest = r
  end

  if largest != i
    heap[i], heap[largest] = heap[largest], heap[i]
    heapify(heap, largest, length)
  end
end

def heap_it(array, length)
  for i in (length / 2).downto 0
    heapify(array, i, length)
  end
end

def sort(array)
  length = array.length - 1
  while length > 0
    heap_it(array, length)
    array[length], array[0] = array[0], array[length]
    length -= 1
  end
end

array = [1, 2, 5, 3, 4, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16]
sort(array)

p array
