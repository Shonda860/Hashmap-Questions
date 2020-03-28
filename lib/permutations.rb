## Check Permutations

# Write a method which will take two strings as arguments and returns true if one string is a permutation of the other.

# ```
# permutations?("hello", "ehllo") => true
# permutations?("pasta", "atsap") => true
# permutations?("Pizza", "Pasta") => false
# permutations?("", "") => true

# split the string
# check length
# has to have all the same letters, exactly!
# first index of first string

# string1 = "hello"
# string2 = "shonda"

def permutations?(string1, string2)
  # raise NotImplementedError, "permutations? not implemented"
  return false if string1.length != string2.length
  hash1 = count_chars(string1)
  hash2 = count_chars(string2)
  if hash1 == hash2
    return true
  end
  return false
end

def count_chars(string)
  hash = {}
  string_array = string.split("")
  string_array.each do |letter|
    if !hash[letter]
      hash[letter] = 1
    else
      hash[letter] += 1
    end
  end
  return hash
end

# p permutations?(string1, string2)
