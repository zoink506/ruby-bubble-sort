def bubble_sort(array)
  arr = array.dup
  puts "INPUT ARRAY: #{arr}\n\n"

  x = 0
  while x <= arr.length - 1
    changes_made = false;
    puts "ITERATION #{x}"

    arr.each_with_index do |num, index|
      #p "index: #{index}"
      #p "num: #{num}"
      p arr

      if index < arr.length - 1
        if arr[index] > arr[index+1]
          arr[index] = arr[index+1]
          arr[index+1] = num
          changes_made = true
          #p arr
          next
        end
      end
    end 

    if !changes_made
      puts "\nNO CHANGES MADE, EXITING LOOP"
      break
    end 

    x += 1
  end

  return arr
end

arr = [3,2,9,6,5]
new_arr = bubble_sort(arr)
puts "new_arr: #{new_arr}"