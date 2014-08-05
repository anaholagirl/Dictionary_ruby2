class Word

  @@all_words = []

  def Word.all
    @@all_words
  end

  def initialize(word, language)
    @word = word
    @language = language
  end

  def word
    @word
  end

  def language
    @language
  end

  def save
    @@all_words << self
  end
end


