 # flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# flintstones_hash = {}
# flintstones.each_with_index do |name, index|
#   flintstones_hash[name] = index
# end

# flintstones_hash

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# ages.values.reduce(:+)

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.select { |k, v| v < 100 }
# # ages.keep_if { |_, age| age < 100 }

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# ages.values.min

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.index { |name| name[0,2] == "Be"}

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.map! do |name|
#   name[0,3]
# end

# statement = "The Flintstones Rock"
# counter = {}

# statement.split.join('').split('').each do |letter|
#   letter_frequency = statement.scan(letter).count
#   counter[letter] = letter_frequency
# end

# counter

# words = "the flintstones rock"
# words.split.map { |word| word.capitalize }.join(' ')

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.values.each do |hash|
#   if hash["age"] > 65
#     hash["age_group"] = "senior"
#   elsif hash["age"] < 64 && hash["age"] > 17
#     hash["age_group"] = "adult"
#   else 
#     hash["age_group"] = "kid"
#   end
# end

# munsters.each do |name, values|
#   case values["age"]
#   when 0..18
#     values["age_group"] = kid
#   when 18..65
#     values["age_group"] = "adult"
#   else
#     values["age_group"] = "senior"
#   end
# end