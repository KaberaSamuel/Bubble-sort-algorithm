def bubble_sort(array)
  while !array.is_sorted?
    array.each_with_index do |item,index|
      next if index == 0
      if item < array[index - 1]
        before = array[index - 1]
        array[index - 1] = item
        array[index] = before 
      end
    end
  end
  array
end

class Array
  def is_sorted?
    current = self[0]
    for item in self 
      return false if item < current
    end
    return true
  end
end

p bubble_sort([4,3,78,2,0,2])
# => [0, 2, 2, 3, 4, 78]
