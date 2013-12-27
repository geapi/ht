require_relative "../spec_helper"

describe HT do
  describe "#words_from_string" do
    it "parses 'anto' and returns ['an', 'to']" do
      ht = HT.new
      words = ht.words_from_string("anto")

      expect(words).to eq ["an", "to"]
    end

    it "parses 'iamhappy' and returns ['i', 'am', 'happy']" do
      ht = HT.new
      words = ht.words_from_string("iamhappy")

      expect(words).to eq ["i", "am", "happy"]
    end
  end
end