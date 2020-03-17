def bubble(arr)
    sorted = false
    while sorted == false
        counter = 0
        arr.each.with_index do |i, ind|
            k = ind + 1
            if (arr[ind] <=> arr[k]) == 1
                counter += 1
                arr[ind], arr[k] = arr[k], arr[ind]
            end
        end
        if counter == 0
            sorted = true
        else
            counter = 0
        end

    end
    print arr
end
bubble([4,3,78,2,0,2])
def bubble_sort_by(arr)
    sorted = false
    while sorted == false
        counter = 0
        arr.each.with_index do |i, ind|
            k = ind + 1
            if k != arr.length
            checker = yield(i, arr[ind + 1])
            if checker > 0
                counter += 1
                arr[ind], arr[k] = arr[k], arr[ind]
            end
        end
        end
        if counter == 0
            sorted = true
        else
            counter = 0
        end

    end
    print arr
end
bubble_sort_by(["hi","hello","hey"]) do |left,right|
     left.length - right.length
   end
