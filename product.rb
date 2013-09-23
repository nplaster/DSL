#Brandon Bosso
#Naomi Plasterer

# must store the product name and list of processes (I used an array for this)
# must be able to add a process, including a process that has a parameter (e.g., pay 'commission' vs. activate)
# must be able to "process" a payment - by calling all the processes stored for
# that type of product. See 'book' in figure 2.

class Product
  attr_reader :rules

  def initialize(text)
    @text = text
    @rules = Array.new
  end

#handle adding a rule with parameters and without
  def add_rule(text)
    @rules << Process.new(text)
  end
  
#Handles payment for the product
  def handlePayment()
    for rule in @rules
      rule.handleProcess
    end
    
  end
end

class Processes
  attr_reader :text
  def initialize(text)
    @text = text
  end
  
  def handleProcess()
    puts @text
  end
end
