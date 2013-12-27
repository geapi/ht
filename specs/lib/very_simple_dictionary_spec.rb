require_relative "../spec_helper"

describe VerySimpleDictionary do
  describe "#word?" do
    it "returns true if the word is in the know word list" do
      allowed_words = %w{foo bar}
      dict = VerySimpleDictionary.new(allowed_words)
      expect(dict.word?("foo")).to eql true
      expect(dict.word?("bar")).to eql true
    end

    it "returns false if the word is not in the know word list" do
      allowed_words = %w{mouse check}
      dict = VerySimpleDictionary.new(allowed_words)
      expect(dict.word?("foo")).to eql false
      expect(dict.word?("bar")).to eql false
    end
  end
end