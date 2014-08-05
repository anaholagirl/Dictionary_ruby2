require "rspec"
require "term"
require "word"
require "definition"


describe "Term" do
  describe ".initialize" do
    it "will create an instance of Term" do
      new_term = Term.new('apple', 'a fruit')
      expect(new_term).to be_an_instance_of Term
    end

    it "will add a word" do
      new_term = Term.new('apple', 'a fruit')
      expect(new_term.word).to eq('apple')
    end

    it "will add a definition" do
      new_term = Term.new('apple', 'a fruit')
      expect(new_term.definition).to eq('a fruit')
    end

    it "will create a term with both a word and a definition" do
      new_term = Term.new('apple', 'a fruit')
      expect(new_term.term).to eq('apple, a fruit')
    end
  end
end
