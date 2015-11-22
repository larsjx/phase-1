

def pigit (word)
  puts word[/(?<vowel>[aeiou])(?<non_vowel>[^aeiou])/, "non_vowel"]
end




pigit(gets.chomp!)