require_relative "very_simple_dictionary"

class HT
  attr_reader :dictionary
  def initialize(dictionary = VerySimpleDictionary.new)
    @dictionary = dictionary
  end

  def words_from_string(input_string)
    string_left = input_string
    string_used = ""
    max_length = input_string.size
    words = []
    while max_length > 0
      possible_word = string_left[0, max_length]
      is_word = dictionary.word?(possible_word)
      max_length -= 1
      if is_word
        next_string_left = string_left.gsub(possible_word, "")
        other_words = words_from_string(next_string_left)

        if  !other_words && next_string_left.empty?
          words << possible_word
          return words
        end

        if !next_string_left.empty? && other_words
          words << possible_word
          string_used += possible_word
          string_left = string_left.gsub(possible_word, "")
          max_length = string_left.size
          return words unless string_left
        end
      end
    end
  end
end

