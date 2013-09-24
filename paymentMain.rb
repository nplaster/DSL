#Brandon Bosso
#Naomi Plasterer

#contains the "main" method (begin/end) for making payments
#loads the rules file
#prompts the users and "processes" payments until the user enters a sentinel value (I used 'quit').
#handle undefined product exceptions raised by the PaymentRules class

require_relative 'paymentRules.rb'

class PaymentMain
  def run_product
    rules = PaymentRules.instance
    begin
        #check valid product then call product actions
      begin
        puts "Enter product type or 'quit' to end: "
        response = gets.chomp.downcase
        #check to see if response is legit product type
        if response != 'quit'
          checker = rules.processPayment(response)
        end
        #if not loop through again
      end while(response != 'quit' && checker != true)

    end while (response != 'quit')
  end
  

  
end

#Main code
if __FILE__ == $0
  payment = PaymentMain.new
  Products.load_business_rules('businessRules.txt')
  payment.run_product
end