require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    string_array = self.split(" ")
    sentences = 0
    string_array.each do |word|
      if word.include?(".")
        sentences += 1
      end
      if word.include?("?")
        sentences +=1
      end
      if word.include?("!")
         sentences += 1
      end
    end
  return sentences
  end
end
