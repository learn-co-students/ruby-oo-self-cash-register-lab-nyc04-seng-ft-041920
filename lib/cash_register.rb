require 'pry'
class CashRegister

    #@@all = [] #global scope
    attr_accessor :total, :discount, :items, :price, :last_price #obj attribute(getter method + setter method)
   # attr_reader :last_price 

    def initialize(discount = 0) #obj initialization
        @total = 0 #instance variables
        @discount = discount #instance variables
        @items = []
        @last_price = 0

    end

    #setter method
    # def total=(num)
    #     @total = num #instance variable
    # end

    #getter method
    # def total 
    #     @total #instance variable
    # end
    
    # def discount=(discount)
    #     @discount = discount
    # end

    def add_item(item, price, quant=1)
        self.price = price
        self.total += price * quant

        quant.times { |a| self.items << item }
       
        # if quant >= 2
        #    counter = 0
        #    while counter < quant
        #     self.items << item
        #       counter += 1
        #      end
        #     else 
        #     self.items << item
        # end
        
        
        self.last_price = price * quant  
    end
    #binding.pry

    def apply_discount 
        if self.discount == 0
            "There is no discount to apply."
        else
            self.total -= 200
         "After the discount, the total comes to $#{self.total}."
         end
    end

    def void_last_transaction
        self.total -= self.last_price
    end

end
