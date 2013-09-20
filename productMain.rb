#contains the "main" method (begin/end) for making payments
#loads the rules file
#prompts the users and "processes" payments until the user enters a sentinel value (I used 'quit').
#handle undefined product exceptions raised by the PaymentRules class

  def run_quiz
    count=0
    @questions.each { |q| count += 1 if q.ask }
    puts "You got #{count} answers correct out of #{@questions.size}."
  end