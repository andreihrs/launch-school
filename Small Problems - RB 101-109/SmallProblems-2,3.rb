# def repeat(str, no)
#   for i in 1..no
#     puts str
#   end
# end


# def is_odd?(no)
#   no % 2 == 1
# end

# ### OR

# def is_odd?(no)
#   no.abs % 2 == 1
# end

# def digit_list(no)
#   arr = []
#   while no > 0 do
#     arr.unshift(no%10)
# 	no /= 10
#   end 
#   return arr
# end

# def digit_list(number) ###The interesting solution
#   number.to_s.chars.map(&:to_i)
# end

# def count_occurences(vehicles)
#   counter = {}
#   vehicles.uniq.each do |vehicle| 
#     counter[vehicle] = vehicles.count(vehicle)
#   end 
  
#   counter.each do |vehicle, count|
#     puts "#{vehicle} => #{count}"
#   end
# end

# def reverse_sentence(str)
#   rev = str.split(" ").reverse.join(" ")
# end

# def reverse_words(str)
#   str.split.map{|w| w.length >= 5 ? w.reverse : w}.join(" ")
# end

# def stringy(number)
#   str = []
#   number.times do |i|
#     i % 2 == 0 ? str << 1 : str << 0 
#   end 
#   str.join()
# end

# def average(arr)
#   num = arr.length
#   sum = arr.reduce(:+)
#   return sum/num
# end

# def sum(num)
#   num.to_s.chars.map(&:to_i).reduce(:+)
# end

# def calculate_bonus(salary, raise)
#   raise ? salary / 2 : 0
# end

# value = 1
# while value <= 99
#   puts value
#   value += 2
# end

# value = 0
# while value < 99
#   puts value
#   value += 2
# end

# puts "Please enter an integer greater than 0"
# i = gets.chomp.to_i
# Enter 's' to compute the sum, 'p' to compute the product.
# a = gets.chomp
# if a == 's'
#   sum = (1..i).inject { |sum, n| sum + n } 
#   puts "The sum is #{sum}"
# elsif 
#   prod = (1..i).inject { |prod, n| prod * n }
#   puts "The product is #{product}"
# end

