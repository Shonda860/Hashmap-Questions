# Write a method which takes a string as an argument and returns true if the letters could be re-arranged into a palindrome.

# palindrome_permutation?("hello") => false
# palindrome_permutation?("carrace") => true # because racecar is a palindrome

# string = "shonda"
# string = "carrace"

# we need to count the string length
# looks for dupilicate letter
# puts them at opposite ends

# looks at the first index and compares it to the rest of the array
#if the letter is the it will put it in the very last position
#the letter is not there moves to next position

#while index that we are currently on is less than length minus 1 contine to keep checking

def palindrome_permutation?(string)
  hash = {}
  string_array = string.split("")
  string_array.each do |letter|
    hash[letter] = true
  end

  string_array.each do |letter|
    hash[letter] = !hash[letter]
  end
  # even
  # if the length is even we make each letter is repeat once
  if string_array.length % 2 == 0
    hash.values.each do |value|
      if value == false
        return false
      end
    end
    return true
  end

  # odd
  # if the length is odd we each letter will repeat once the the expect of one letter only once
  if string_array.length % 2 == 1
    odd_numbers = 0
    hash.values.each do |value|
      if value == false
        odd_numbers += 1
      end
    end
    return odd_numbers == 1
  end
end # method

# p palindrome_permutation?(string)

#new_word = []

# string_array.each do |letter|
#   if hash[letter]
#     new_word << letter
#   end
# end
# return new_word
#   i += 1
# end
