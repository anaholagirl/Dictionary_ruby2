class Term

  @@all_terms = []

  def Term.all
    @@all_terms
  end

  def initialize(word, definition)
    @words = [word]
    @definitions = [definition]
  end

  def term_show
    @words.each do |word_in_array|
      puts word_in_array.word
      puts word_in_array.language
    end
    @definitions.each do |definition_in_array|
      puts definition_in_array.definition
    end
  end

  def word_show
    @words.each do |word_in_array|
      puts word_in_array.word
    end
    # @words.join(", ") #+", "+ @definitions.join(", ")
  end



  def words
    @words
  end

  def definitions
    @definitions
  end

  def save_definition(string)
    @definitions << Definition.new(string)
  end

  def save_word_object(word, language)
    @words << Word.new(word, language)
  end

  def save
    @@all_terms << self
  end
end
