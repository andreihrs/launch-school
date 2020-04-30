# arr = ['10', '11', '9', '7', '8']
# arr.sort { |a, b| b.to_i <=> a.to_i }

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# books.sort_by { |book| book[:published].to_i }

# arr1[2][1][3]
# arr2[1][:third][0]
# arr3[2][:third][0][0]
# hsh1[:b][1]
# hsh2[:third].keys[0]

# arr1[1][1] = 4
# arr2[2] = 4
# hsh1[:first][2][0] = 4
# hsh2[['a']][:a][2] = 4

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
# sum = 0
# munsters.each_value do |member|
#   sum += member["age"] if member["gender"] == "male"
# end

# sum 

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, details|
#   puts "#{name} is a #{details['age']}-year-old #{details['gender']}"
# end

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# vowels = 'aeiou'

# hsh.each do |k, v|
#   v.each do |word|
#     word.chars.each do |letter|
#       puts letter if vowels.include?(letter)
#     end
#   end
# end

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# arr.map do |subarr|
#   subarr.sort do |a,b|
#     b <=> a
#   end
# end

# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# arr.map do |hsh|
#   new_hash={}
#   hsh.each do |k,v|
#     new_hash[k] = v + 1
#   end
#   new_hash
# end

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |subarr|
  subarr.select do |n|
    n % 3 == 0
  end
end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

arr.each_with_object({}) do |subarr, hsh|
  hsh[subarr[0]] = subarr[1]
end

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
arr.sort_by do |subarr|
  subarr.select do |num|
    num.odd?
  end
end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |fruit, details|
  if details[:type] == 'fruit'
    details[:colors].map { |color| color.capitalize! }
  elsif details[:type] == 'vegetable'
    details[:size].upcase!
  end
end

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.map do |hash|
  hash.reject do |k, values|
    odd_number = false
    values.each do |number|
      odd_number = number.odd?
    end
    odd_number 
  end
end

arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end


def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  sections = [8, 4, 4, 4, 12]
  uuid = ''

  sections.each_with_index do |value, index| 
    value.times { uuid += characters.sample }
    
    if index < sections.size - 1
      uuid += '-'
    end
  end  

  uuid
end

generate_UUID

# arr = [['a', 'b', 'c', 'd', 'e', 'f'], [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]]



