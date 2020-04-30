ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.has_key?("Spot") # or key? or include? or member?

munsters_description = "The Munsters are creepy in a good way."

munsters_description.swapcase!
munsters_description.capitalize!
munsters_description.downcase!
munsters_description.upcase!

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

advice = "Few things in life are as important as house training your pet dinosaur."
advice.include? "Dino"

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney WIlma Betty BamBam Pebbles)
flinstones << "Dino"
flintstones.concat(%w(Dino Hoppy))
flintstones.push("Dino").push("Hoppy") 

advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, 39) # advice.index('house')

statement = "The Flintstones Rock!"
statement.count("t")

title = "Flintstone Family Members"
title.center(40)