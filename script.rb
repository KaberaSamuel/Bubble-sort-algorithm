#Creating function that will sort an array
def bubble_sort(array)
  while !array.is_sorted?
    array.each_with_index do |item,index|
      next if index == 0
      array[index - 1], array[index] = array[index], array[index - 1] if item < array[index - 1]        
    end
  end
  array
end

# Creating method to check if an array is sorted or not 
class Array
  def is_sorted?
    current = self[0]
    for item in self 
      return false if item < current
      current = item
    end
    return true
  end
end

p bubble_sort([4,3,78,2,0,2])
# => [0, 2, 2, 3, 4, 78]
