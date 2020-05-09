def rotate_array (arr)
  new_arr = arr.clone
  x = new_arr.shift
  new_arr.push(x)
  
  new_arr
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end


# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4] 

def rotate_rightmost_digits (int, times)
  arr = [] 
  loop do
    arr << int % 10
    int /= 10 
    times -= 1

    break if times <= 0
  end

  i = 1

  while i < arr.size do
    int *= 10
    int += arr[arr.size - i - 1]

    i += 1
  end
  
  int *= 10 
  int += arr[arr.size - 1]
  
  int 
end

# def rotate_rightmost_digits(x, no) 
  
# end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end