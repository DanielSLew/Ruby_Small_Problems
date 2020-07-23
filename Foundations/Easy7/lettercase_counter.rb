# Write a method that takes a string
# Returns a hash containing 3 entries
# counts for uppercase, lowercase, and neither.

# - Use String#chars and then Ennumerable#each_with_object({})
# - Use an if statement, to push each of the counts to the object
#   - ie hash[lowercase] += 1

def letter_case_count(string)
  letter_count = { uppercase: 0, lowercase: 0, neither: 0 }
  string.chars.each_with_object(letter_count) do |char, hash|
    if char[/[a-z]/]
      hash[:lowercase] += 1
    elsif char[/[A-Z]/]
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end
end
