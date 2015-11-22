=begin
IF the word starts with a vowel, return the word.
ELSE return the word's pig latin equivalent.
  MOVE all leading consonants to the end of the word
  and add the suffix "ay."
ENDIF# Your code here
=end

def latinizer(word)
  if word =~ (/\A[^(aeiou)]/)
    word = word[1..-1] + word.scan(/\A[^(aeiou)]/).join("")+"ay" + " "
  else return word + " "
  end
end

def phrase_splitter(phrase)
  words = phrase.split(" ")
  return translate(words)
end

def translate(words)
  sentence = []
  words.each {|word|
    sentence << latinizer(word)
  }
  return punctuation(sentence)
end

def punctuation(sentence)
  sentence.each { |word|
    if word =~ (/[!.?]/)
      puts word
    end
  }
end

# p latinizer(gets.chomp)
p phrase_splitter(gets.chomp)