require 'benchmark'

def benchmark
  n = 50000
  Benchmark.bm do |benchmark|
    benchmark.report('With flag') do
      n.times do
        bubble_sort([4,3,78,2,0,2])
      end
    end

    benchmark.report('Without flag') do
      n.times do
        bubble_sort_no_flag([4,3,78,2,0,2])
      end
    end
  end
end


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

def bubble_sort_no_flag(arr)
  for j in 0...arr.length
    for k in 0...arr.length-j-1
      if arr[k+1] < arr[k]
        tmp = arr[k]
        arr[k] = arr[k+1]
        arr[k+1] = tmp
      end
    end
  end
  arr
end

p benchmark()
