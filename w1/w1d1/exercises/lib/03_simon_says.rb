def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, times = 2)
  result = ""

  times.times do |i|
    i == times - 1 ? result << str : result << str + " "
  end

  result
end

def start_of_word(str, chars)
  str.split("").first(chars).join("")
end

def first_word(str)
  str.split(" ").first
end

EXCLUDE_WORDS = [
  "and",
  "over",
  "the",
]

def titleize(title)
  title_words = title.split(" ").map.with_index do |word, idx|
    if EXCLUDE_WORDS.include?(word) && idx != 0
      word
    else
      word.capitalize
    end
  end

  title_words.join(" ")
end
