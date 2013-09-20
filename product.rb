# must store the product name and list of processes (I used an array for this)
# must be able to add a process, including a process that has a parameter (e.g., pay 'commission' vs. activate)
# must be able to "process" a payment - by calling all the processes stored for
# that type of product. See 'book' in figure 2.

class Question
  attr_reader :answers

  def initialize( text )
    @text = text
    @answers = []
  end

  def add_answer(answer)
    @answers << answer
  end

  def ask
    puts ""
    puts "Question: #{@text}"
    @answers.size.times do |i|
      puts "#{i+1} - #{@answers[i].text}"
    end
    print "Enter answer: "
    answer = gets.to_i - 1
    return @answers[answer].correct
  end
end

class Answer
  attr_reader :text, :correct
  def initialize( text, correct )
    @text = text
    @correct = correct
  end
end
