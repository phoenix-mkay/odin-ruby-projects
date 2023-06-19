def bubble_sort(arr)
    # Nested loop compare digit to its next number in the loop
    swapped = true
    # Get array length
    arr_length = arr.length
    #  Only exit once no preceeding number is larger than number after it in the array
    while swapped do
        swapped = false

        (arr_length-1).times do |i|
            if arr[i] > arr[i + 1]
                arr[i],arr[i + 1] = arr[i + 1],arr[i]
                swapped = true
            end
        end
    end
 
    arr
end


puts bubble_sort([4,3,78,2,0,2])