#creates a singleton class
#store the rules in a data structure (I used a hash)
#must be able to add processes to any existing product, not just the last one
#(differs from the Quiz example; see 'book' product in Figure 1)
#responds to each process (e.g., activate) by simply displaying a message
#(a real system would interact with other code that would talk to a database, etc. We're just representing those actions as messages, as shown in figure 2).
#include a method that will process a payment. The parameter will be the payment type
#(e.g., "book"). This method should raise an exception if the payment type is undefined.


require 'singleton'

class Rules
  include Singleton
  attr_reader :questions


  def initialize
  puts "init"
    @questions = []
  end

  def add_question(question)
    @questions << question
  end

  def last_question
    @questions.last
  end


end
