#defines methods to respond to all DSL statement types (e.g., product, activate, packing
#slip and pay would be required for the file in Figure 1)
#these methods cause appropriate rules to be stored in PaymentRules

require './paymentRules.rb'
require './product.rb'

def product(text)
  puts "Processing payment of type: #{text}"
  #PaymentRules.instance.add_product(text)
end

def packing_slip(text)
  puts "----Packing slip for #{text}"
  #PaymentRules.instance.last_product.add_rule("----Packing slip for #{text}")
end

def pay(text)
  #PaymentRules.instance.last_product.add_rule("----Paying #{text}")
end

def email(text)
  puts "----Sending email for #{text}"
  #PaymentRules.instance.last_product.add_rule("----Sending email for #{text}")
end

def activate()
  puts "----Activating membership"
  #PaymentRules.instance.last_product.add_rule("----Activating membership")
end

def upgrade()
  puts "----Upgrading membership"
  #PaymentRules.instance.last_product.add_rule("----Upgrading membership")
end

def add_first_aid()
  puts "----Adding free First Aid video to packing slip"
  #PaymentRules.instance.last_product.add_rule("----Adding free First Aid video to packing slip")
end

def load_business_rules(filename)
  load filename
end

load_business_rules('businessRules.txt')