require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    words_array = self.split(" ")
    counter = 0

    words_array.map do |word|
      if word.sentence? || word.question? || word.exclamation?
        counter += 1
      end
    end
    counter
  end
end

str = "Hi hello! goodbye bye?"
puts str.count_sentences
