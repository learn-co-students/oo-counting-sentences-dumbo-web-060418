require 'pry'

class String

  def sentence?
    if self.end_with?(".")
    	true
    else
    	false
    end
  end

  def question?
  	if self.end_with?("?")
  		true
  	else
  		false
  	end
  end

  def exclamation?
  	if self.end_with?("!")
  		true
  	else
  		false
  	end
  end

  def count_sentences
  	
  	phrase = self.split(/[.?!]/).delete_if(&:empty?)
  	phrase_count = phrase.count
  	phrase_count


  	# if self.split.count == 0
  	# 	0
  	# elsif self.sentence? || self.question? || self.exclamation?
  	# 	self.split.count
  		
  	end


  
end


# Pry.start