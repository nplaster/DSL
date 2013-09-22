#defines methods to respond to all DSL statement types (e.g., product, activate, packing
#slip and pay would be required for the file in Figure 1)
#these methods cause appropriate rules to be stored in PaymentRules

require './paymentRules.rb'
require './product.rb'

def product(text)
  Rules.instance.add_question Product.new(text)
end

def packing_slip(text)
  Rules.instance.add_question Process.new(text)
end

def pay(text)
  Rules.instance.add_question Process.new(text)
end

def email(text)
  Rules.instance.add_question Process.new(text)
end

def activate()
  Rules.instance.add_question Process.new()
end

def upgrade()
  Rules.instance.add_question Process.new()
end

load 'businessRules.txt'