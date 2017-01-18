require "byebug"
def translate(str)
  translated_words = str.split(" ").map do |word|
    translate_word(word)
  end

  translated_words.join(" ")
end

def translate_word(word)
  vowels = %(a e i o u)
  if vowels.include?(word[0])
    "#{word}ay"
  else
      until word[-2..-1] == "qu" || vowels.include?(word[0]) && word[-1] != "q"
        word = word[1..-1] + word[0]
      end
    "#{word}ay"
  end
end
