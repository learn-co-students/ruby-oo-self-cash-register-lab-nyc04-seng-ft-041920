class CashRegister
    attr_accessor :total, :discount, :cart, :quantity, :last_item
    
    def initialize(discount=0)
        @total = 0
        @discount = discount 
        @cart = []
    end

    def add_item(item, price, quantity=1)
        self.total += price * quantity
        quantity.times do 
        self.cart << item
        self.last_item = price * quantity
        end
    end

    def apply_discount
       if @discount == 0 
            return "There is no discount to apply."
        end
       
        @total -= @total * @discount / 100
        return "After the discount, the total comes to $#{@total}."
    end

    def items
        self.cart
    end

    def void_last_transaction
        self.total -= self.last_item

    end

  end
    


   
   
   
   
   
    
