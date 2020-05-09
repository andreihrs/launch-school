# def search_101
#   arr = []
#   index = 1
#   5.times do 
#     case index 
#     when 1
#       puts "Enter the 1st number"
#     when 2
#       puts "Enter the 2nd number"
#     when 3
#       puts "Enter the 3rd number"
#     else 
#       puts "Enter the #{index}th number"
#     end
#     arr << gets.chomp.to_i
#     index += 1
#   end
  
#   puts "Enter the last number"
#   no = gets.chomp.to_i

#   if arr.index(no)
#     puts "The number #{no} apears in #{arr}"
#   else 
#     puts "The number #{no} does not appear in #{arr}"
#   end 
# end

# search_101

# def prompt(message)
#   puts "==> #{message}"
# end

# prompt("Enter the first number:")
# first_number = gets.chomp.to_i
# prompt("Enter the second number:")
# second_number = gets.chomp.to_i

# prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
# prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
# prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
# prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
# prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
# prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")


# print 'Please write word or multiple words: '
# input = gets.chomp
# number_of_characters = input.delete(' ').size
# puts "There are #{number_of_characters} characters in \"#{input}\"."

def multiply(n1, n2)
  n1 * n2
end

def square(n)
  multiply(n, n)
end

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

def oddities(arr)
  index = 0
  new_arr = []

  while index < arr.length
    new_arr.push(arr[index]) if index.even?
    index += 1
  end

  new_arr
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(str)
  str.downcase!
  str = str.delete('^a-z0-9')
  str == str.reverse
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

def palindromic_number?(no)
  rev_number = no.to_s.chars.reverse.join('').to_i
  no == rev_number
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

def palindromic_number?(number)
  palindrome?(number.to_s)
end