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
  def add_rule(method, noParam, parameter = "")
    symbol = method.to_sym
    if respond_to? symbol
      if !noParam
      rule = "#{method}"
      else
        rule = "#{method} '#{parameter}'"
      end
      @rules << rule
    else
      abort("Invalid method name #{method}")
    end
  end
  
#Handles payment for the product
  def handlePayment()
    puts "Processing payment of type: #{@text}"
    for rule in @rules
      #puts rule
      instance_eval(rule)
    end
    
  end
  
  def packing_slip(text)
    puts "----Packing slip for #{text}"
  end
  
  def pay(text)
    puts "----Paying #{text}"
  end
  
  def email(text)
    puts "----Sending email for #{text}"
  end
  
  def activate()
    puts "----Activating membership"
  end
  
  def upgrade()
    puts "----Upgrading membership"
  end
  
  def add_first_aid()
    puts "----Adding free First Aid video to packing slip"
  end
end
