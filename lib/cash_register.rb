require 'pry'
class CashRegister

    attr_accessor :total, :discount, :prices

    def initialize(discount= 0)
      @total = 0
      @discount = discount
      @items = []
      @prices = []
    end

    def add_item(title, price, quantity = 1)
           items_price = quantity * price 
           self.total += items_price

           quantity.times do
            @items << title 
            @prices << items_price
           end 
      end

    
    def items
        @items
    end

    def apply_discount
      if discount == 0 
        return "There is no discount to apply."
      end
      self.total -= ((@total/100) * discount)
      return "After the discount, the total comes to $#{self.total}."
    end
   def void_last_transaction
    self.total = self.total - prices.pop
   end

end