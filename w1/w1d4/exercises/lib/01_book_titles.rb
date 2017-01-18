class Book
    EXEMPT_WORDS = ["the", "a", "an", "and", "in", "the", "of"]


    attr_reader :title

  def title=(title)

    lowercase_words = title.split(" ").map(&:downcase)

    title_words = lowercase_words.map.with_index do |word, i|
      if EXEMPT_WORDS.include?(word) && i != 0
        word
      else
        word.capitalize
      end
    end

    @title = title_words.join(" ")
  end
end
