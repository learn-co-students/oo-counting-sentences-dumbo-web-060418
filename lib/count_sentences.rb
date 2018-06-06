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
    phrases = self.split(/[.!?]/).delete_if(&:empty?)
    phrase_count = phrases.count
    phrase_count
  end

end #ends string


#Pry.start
