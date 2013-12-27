class VerySimpleDictionary
  attr_reader :allowed_words
  def initialize(allowed_words = %w(i am happy ant an to))
    @allowed_words = allowed_words
  end
  def word?(possible_word)
    allowed_words.include?(possible_word)
  end
end