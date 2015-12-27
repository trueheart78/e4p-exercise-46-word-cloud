class WordCloud

  def initialize text
    @text = text
  end

  def sort
    @word_sort = { large: [], medium: [], small: [] }
    word_freq.each { |word,count| set_freq word, count }
    @word_sort
  end

  private

  def set_freq word, count
    @word_sort[:large] << word if count >= 3
    @word_sort[:medium] << word if count == 2
    @word_sort[:small] << word if count == 1
  end

  def word_freq
    tracked_words = {}
    @text.downcase.split.each do |word|
      tracked_words[word] += 1 if tracked_words.key? word
      tracked_words[word] = 1 unless tracked_words.key? word
    end
    tracked_words
  end
end
