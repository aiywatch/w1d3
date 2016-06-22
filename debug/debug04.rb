def char_count(list)
  letters = Hash.new(0)
  list.each do |word|
    word.split('').each { |letter| letters[letter] += 1 }
  end
  letters
end

# Why the long face(error)? 
# 1. This should return count of each letter in the list
# ex: { "a" => 4, "p" => 3, "l" => 1  ...}

puts char_count(['apples', 'oranges', 'hipsters', 'are', 'same'])


# 2. What are the improvements you can do to above code?
def char_count2(list)
  list.join().chars.inject(Hash.new(0)){ |h, c| h[c] += 1; h }
end

puts "second method"
puts char_count2(['apples', 'oranges', 'hipsters', 'are', 'same'])