#!/bin/ruby

def heapify(heap, i)
  largest = i
  l = 2*i + 1
  r = 2*i + 2

  if l < heap.length && heap[l] > heap[i]
    largest = l
  end

  if r < heap.length && heap[r] > heap[largest]
    largest = r
  end

  if largest != i
    heap[i], heap[largest] = heap[largest], heap[i]
    heapify(heap, largest)
  end
end

array = [1, 2, 3, 4, 10, 25, 7]

for i in (array.length / 2).downto 0
  heapify(array, i)
end

p array
