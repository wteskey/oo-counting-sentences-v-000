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

# split into an array without included (., or ?) and then count the sentences. 

  def count_sentences  
  self.split(/[.?!]/)    
  .delete_if |s|    
  s.size < 2.count  
  end

end