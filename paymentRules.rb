#Brandon Bosso
#Naomi Plasterer

#creates a singleton class
#store the rules in a data structure (I used a hash)
#must be able to add processes to any existing product, not just the last one
#(differs from the Quiz example; see 'book' product in Figure 1)
#responds to each process (e.g., activate) by simply displaying a message
#(a real system would interact with other code that would talk to a database, etc. We're just representing those actions as messages, as shown in figure 2).
#include a method that will process a payment. The parameter will be the payment type
#(e.g., "book"). This method should raise an exception if the payment type is undefined.


require 'singleton'
require_relative 'product.rb'
require_relative 'products.rb'

class PaymentRules
  include Singleton
  attr_reader :products, :current_product

  def initialize
    @products = Hash.new
    @current_product
  end

  #Add a product to the products hash
  def add_product(text)
    if @products.has_key?(text)
      @current_product = text
    else
      @products[text] = Product.new(text)
      @current_product = text
    end
  end

  #Add a rule to the last product read in the businessRules file
  def add_rule(last_product, text)
    if @products.has_key?(last_product)
      @products[last_product].addRule(text)
    else
      puts "#{last_product} is not a valid product"
    end
  end
  
  #Processes a payment for a given product type
  def processPayment(text)
    if @products.has_key?(text)
      @products[text].handlePayment
      return true
    else
      puts "Invalid product: #{text}"
      return false;
    end
  end

  #Returns the current product
  def currentProduct()
    @products[@current_product]
  end

end