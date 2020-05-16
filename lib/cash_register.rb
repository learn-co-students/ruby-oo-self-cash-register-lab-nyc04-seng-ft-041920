#5/14/2020 - 5/15/2020 7:00am - 8:39pm

require 'pry'
class CashRegister

    #@@all = [] #global scope
    attr_accessor :total, :discount, :items, :last_transaction #obj attribute(getter method + setter method)
   # attr_reader :last_price 



#    CashRegister.new()  # discount here will initialize to 20 (default)
#    CashRegister.new(55). #discount here will initialize to 55 



    def initialize(discount = 0) #obj initialization
        @total = 0 #instance variable
        @discount = discount #instance variable
        @items = [] #instance variable

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
        
        
        self.last_transaction = price * quant  
    end
    #binding.pry

    def apply_discount 
        #binding.pry
        if self.discount == 0
            "There is no discount to apply."
        else
            self.total = (total * ((100.0 - self.discount.to_f)/100)).to_i
         "After the discount, the total comes to $#{self.total}."
         end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

end





# 5/15/2020 Fri 8:40pm - 9:11 (31mins)

# class CashRegister

#     attr_accessor :total, :discount, :items, :last_transaction

#     def initialize(discount = 0)
#         @total = 0
#         @discount = discount
#         @items = []
#         @last_transaction = last_transaction
#     end

#     def add_item (title, price, quant = 1)
       
#         self.total += price * quant

#         quant.times {|i| self.items << title }

#         @last_transaction = price * quant
#     end

#     def apply_discount
#         if self.discount == 0 
#             "There is no discount to apply."
#         else
#             self.total -= 200
#             "After the discount, the total comes to $#{self.total}."
#         end  
#     end

#     def void_last_transaction
#         self.total -= self.last_transaction
#     end
    
# end

# # 5/15 9:30 - 9:53 (23mins)
# class CashRegister

#     attr_accessor :total, :discount, :last_transaction, :items #obj attribute(getter method + setter method)

#     def initialize(discount = 0) ## why does this work??
#         @total = 0 #instace variable
#         @discount = discount #instance variable
#         @items = []
#         @last_transaction = 0
#     end

#     def add_item(title, price, quant = 1)
   
#         self.total += price * quant
        
#         quant.times { |i| self.items << title }

#         self.last_transaction = price * quant
#     end

#     def apply_discount 
#         if self.discount == 0
#             "There is no discount to apply."
#         else
#             self.total -= 200
#             "After the discount, the total comes to $#{self.total}."
#         end
#     end

#     def void_last_transaction
#         self.total -= self.last_transaction
#     end

# end


# #5/13/2020 9:59 - 10:09 (10mins!)

# class CashRegister

#     attr_accessor :total, :discount, :last_transaction, :items

#     def initialize (discount = 0)
#         @total = 0
#         @discount = discount
#         @last_transaction = 0
#         @items = []
#     end

#     def add_item(title, price, quant = 1)
#         self.total += price * quant

#         quant.times {|i| @items << title}

#         @last_transaction = price * quant
#     end

#     def apply_discount
#         if self.discount == 0 
#             "There is no discount to apply."
#         else
#             self.total -= 200
#             "After the discount, the total comes to $#{self.total}."
#         end
#     end

#     def void_last_transaction
#         @total -= @last_transaction
#     end
# end