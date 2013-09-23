#include a test for loading a simple set of rules, such as the rules shown in figure 1.
#For example, I tested the number of products loaded, retrieved the :book product, ensured that the product name was "book" and that it included 2 processes.
#include a test of error handling if the file has a bad method name.
#include a test of doing the processes for a product. Use a product that has at least one parameterized process.
#NOTE: since we are using "puts" for the actions, we can't totally automate this. But we can at least automate running the processes for one product. See figure 3.

require 'test/unit'
require_relative 'paymentMain.rb'

class TestNim < Test::Unit::TestCase
  def test_do_process
    product = paymentMain.new
    product.load_business_rules('businesRules.txt')
    product.run_product
  end
  
  #test for loading a simple set of rules
  def test_load_products
    rules = paymentRules.new
    load_business_rules('simpleRules.txt')
    assert_equal(rules.processPayment('book'), expected)
    assert_equal(rules.processPayment('membership'), expected)
  
  end

  #test bad Rules
  def test_load_error
    product = paymentMain.new
    load_business_rules('badRules.txt')
    product.run_product
  end

end