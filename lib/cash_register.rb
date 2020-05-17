require "pry"
class CashRegister
    attr_accessor :total, :discount, :items, :last_items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        
    end

    def add_item(title, price, quantity=1)
        quantity_string = (title << " ") * quantity
        
        self.items.concat(quantity_string.split(" "))
        self.total += price.to_f * quantity
        self.last_items = price * quantity
    end
   
    def apply_discount()
        discount = @discount/100.0
        self.total = self.total - (self.total * discount.to_f)
        if discount == 0
            "There is no discount to apply."
        else
            "After the discount, the total comes to $#{self.total.to_i}."
        end
    end

    def void_last_transaction()
        self.total = self.total - self.last_items
    end

end

#transaction = CashRegister.new(20)

#binding.pry