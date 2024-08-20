class Test
  # Build a method #bubble_sort that takes an array and returns a sorted
  # array. It must use the bubble sort methodology (using #sort would be
  # pretty pointless, wouldn’t it?).

  def bubble_sort(arr)
    sorted = false
    count = 0
    array_length = arr.length
    store = 0
    while sorted == false
      count = 0
      arr.select.with_index do |value, index|
        if index  != array_length -1
          if (arr[index] > arr[index+1])
            store = arr[index+1]
            arr[index+1] = arr[index]
            arr[index] = store
            count = count +1
          end
        end
      end
      if count == 0
        sorted = true
      end
    end
    arr
  end

end 

test = Test.new
res = test.bubble_sort([4,3,78,2,0,2])

puts res