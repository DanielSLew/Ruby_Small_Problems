# Write a propgram that deciphers and prints names encrypted with Rot13

# define a method decipher_rot_13 that takes an arg
# arg will be a list of names
# split each of the names up
# iterate through each character using map
# skip the character if it's a non-letter
# if calling String#ord on a letter is between 97..109 then add 13 and call ord
# else subtract 13 and call ord to convert back to letter

def decipher_rot_13(char)
  case char
  when 'a'..'m', 'A'..'M' then (char.ord + 13).chr
  when 'n'..'z', 'N'..'Z' then (char.ord - 13).chr
  else                         char
  end
end

File.open("encrypted_names.txt", "r") do |file|
  encrypted_names = file.read.split("\n")
  encrypted_names.each do |name|
    puts (name.chars.map do |char|
            decipher_rot_13(char)
          end.join)
  end
end

