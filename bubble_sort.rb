def bubble_sort(arr)
  swap = false
  for j in 0...arr.length
    for k in 0...arr.length-j-1
      if arr[k+1] < arr[k]
        swap = true
        tmp = arr[k]
        arr[k] = arr[k+1]
        arr[k+1] = tmp
      end
    end
    break if !swap
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])
