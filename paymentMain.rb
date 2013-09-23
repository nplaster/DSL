#Brandon Bosso
#Naomi Plasterer

#contains the "main" method (begin/end) for making payments
#loads the rules file
#prompts the users and "processes" payments until the user enters a sentinel value (I used 'quit').
#handle undefined product exceptions raised by the PaymentRules class

  def run_product

    begin
      load 'businessRules.txt'
      
      begin
      puts "Enter product type or 'quit' to end: "
      response = gets.chomps.downcase
      #check to see if response is legit product type
      
      #if not loop through again
      end while(response != 'quit') # || response != product)
      
      #calls processes to execute with specified product type
      
    end while (response != 'quit')

  end