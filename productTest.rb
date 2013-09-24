#include a test for loading a simple set of rules, such as the rules shown in figure 1.
#For example, I tested the number of products loaded, retrieved the :book product, ensured that the product name was "book" and that it included 2 processes.
#include a test of error handling if the file has a bad method name.
#include a test of doing the processes for a product. Use a product that has at least one parameterized process.
#NOTE: since we are using "puts" for the actions, we can't totally automate this. But we can at least automate running the processes for one product. See figure 3.
#!/usr/bin/env ruby

require 'test/unit'
require_relative 'paymentMain.rb'

class TestPaymentMain < Test::Unit::TestCase
  def test_doprocess
    rules = PaymentRules.instance
    Products.load_business_rules('businessRules.txt')
    rules.processPayment('book')
    rules.processPayment('membership')
  end
  
  #test for loading a simple set of rules
  def test_loadproducts
    rules = PaymentRules.instance
    Products.load_business_rules('simpleRules.txt')
    checker = rules.processPayment('book')
    assert_equal(checker, true)
    checker = rules.processPayment('membership')
    assert_equal(checker, true)
    checker = rules.processPayment('dog')
    assert_equal(checker, false)
  end

  #test bad Rules
  def test_loaderror
    rules = PaymentRules.instance
    Products.load_business_rules('badRules.txt')
  end

end