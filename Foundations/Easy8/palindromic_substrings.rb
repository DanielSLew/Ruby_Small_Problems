# Write a method that returns list of all substrings that are palindromic
# Return should be arranged in same sequence as substrings appear
# Leave duplicates in
# You may use substrings method from previous exercise

def substrings_at_start(string)
  result = []
  string = string.chars
  string.size.times do
    result << string.join('')
    string.pop
  end

  result.sort
end

def substrings(string)
  result = []
  string.size.times do
    result << substrings_at_start(string)
    string.slice!(0)
  end
  result.flatten
end

def palindrome?(string)
  string.downcase.reverse == string.downcase && 
  string.size > 1 &&
  !(string =~ /[^a-zA-Z0-9]/)
end

def palindromes(string)
  result = substrings(string)
  result.select {|string| palindrome?(string) }
end

