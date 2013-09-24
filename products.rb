#Brandon Bosso
#Naomi Plasterer

#defines methods to respond to all DSL statement types (e.g., product, activate, packing
#slip and pay would be required for the file in Figure 1)
#these methods cause appropriate rules to be stored in PaymentRules

#require_relative 'paymentRules.rb'
#require_relative 'paymentMain.rb'
#require_relative 'product.rb'

class Products
  def self.load_business_rules(filename)
    validFunctions = ['product', 'packing_slip', 'pay', 'email', 'activate', 'upgrade', 'add_first_aid']
    File.open(filename).each do |line|
      if line.to_s.strip.length > 0
        parts = line.split(' ')
        if validFunctions.include? parts[0]
          eval(line)
        else
          puts "Invalid method: #{parts[0]}"
          puts "Aborting..."
          return
        end
      end
    end
  end
end

def product(text)
  PaymentRules.instance.add_product(text)
end

def packing_slip(text)
  PaymentRules.instance.currentProduct.add_rule("packing_slip", true, text)
end

def pay(text)
  PaymentRules.instance.currentProduct.add_rule("pay", true, text)

end

def email(text)
  PaymentRules.instance.currentProduct.add_rule("email", true, text)
end

def activate()
  PaymentRules.instance.currentProduct.add_rule("activate", false)
end

def upgrade()
  PaymentRules.instance.currentProduct.add_rule("upgrade", false)
end

def add_first_aid()
  PaymentRules.instance.currentProduct.add_rule("add_first_aid", false)
end