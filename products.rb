#Brandon Bosso
#Naomi Plasterer

#defines methods to respond to all DSL statement types (e.g., product, activate, packing
#slip and pay would be required for the file in Figure 1)
#these methods cause appropriate rules to be stored in PaymentRules

require_relative 'paymentRules.rb'
require_relative 'paymentMain.rb'
require_relative 'product.rb'

class Products
  attr_reader :last_product
  
  def initialize
    @last_product
  end

  def product(text)
    puts "Processing payment of type: #{text}"
    @last_product = text
    #PaymentRules.instance.add_product(text)
  end
  
  def packing_slip(text)
    puts "----Packing slip for #{text}"
    #PaymentRules.instance.add_rule(@last_product, "----Packing slip for #{text}")
  end
  
  def pay(text)
    #PaymentRules.instance.add_rule(@last_product, "----Paying #{text}")
  end
  
  def email(text)
    puts "----Sending email for #{text}"
    #PaymentRules.instance.add_rule(@last_product, "----Sending email for #{text}")
  end
  
  def activate()
    puts "----Activating membership"
    #PaymentRules.instance.add_rule(@last_product, "----Activating membership")
  end
  
  def upgrade()
    puts "----Upgrading membership"
    #PaymentRules.instance.add_rule(@last_product, "----Upgrading membership")
  end
  
  def add_first_aid()
    puts "----Adding free First Aid video to packing slip"
    #PaymentRules.instance.add_rule(@last_product, "----Adding free First Aid video to packing slip")
  end
  
end
