require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      false
    end
  end

  # #sentence would need to be:

  #def sentence?(string)
  #if no SELF being called...
  #thus:

  #def sentence?(string)
    #if string.end_with? ...

  def question?
    if self.end_with?("?")
      return true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      false
    end
  end

  def count_sentences
    clauses = self.split(/[!?.]/)
    clauses = clauses.reject { |empty| empty.empty? }
    return clauses.length

  end
end
