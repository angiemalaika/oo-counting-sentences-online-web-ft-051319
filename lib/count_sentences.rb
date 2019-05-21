require 'pry'

class String

  def sentence?
    self.end_with?(".")
    # binding.pry 
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
  self.end_with?("!")
  end

  def count_sentences
   self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.count
   #/ \. | \? | \! /
   
#   / then question mark \? then "or" | then period \. then "or" | then exclamation point ! then / to end the expression.

# /\?|\.|!/
  end
end