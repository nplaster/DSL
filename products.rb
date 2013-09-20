#defines methods to respond to all DSL statement types (e.g., product, activate, packing
#slip and pay would be required for the file in Figure 1)
#these methods cause appropriate rules to be stored in PaymentRules

require './paymentRules.rb'
require './product.rb'

#If the payment is for a physical product, generate a packing slip for shipping,
#and generate a commission payment to the agent.
def physical(text)
  Rules.instance.add_question Question.new(text)
end

#If the payment is for a book, create a duplicate packing slip for the royalty department, and
#and generate a commission payment to the agent.
def book(text)
  #code
end
#If the payment is for a membership, activate that membership,
#and e-mail the owner and inform them of the activation/upgrade.
def membership(text)
  #code
end

#If the payment is an upgrade to a membership, apply the upgrade,
#and e-mail the owner and inform them of the activation/upgrade.
def upgrade(text)
  #code
end

#If the payment is for the video "Learning to Ski,"
#add a free "First Aid" video to the packing slip (the result of a court decision in 1997).
def video(text)
  #code
end

load 'businessRules.txt'