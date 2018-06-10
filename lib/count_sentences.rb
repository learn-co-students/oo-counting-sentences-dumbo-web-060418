

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
    self.split(" ").select do |word|
      word.sentence? or word.question? or word.exclamation?
    end.count
  end
end
