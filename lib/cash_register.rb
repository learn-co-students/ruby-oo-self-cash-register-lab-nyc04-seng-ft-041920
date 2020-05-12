class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        @items.fill(title, items.size, quantity)

        @last_transaction = {:title => title, :price => price, :quantity => quantity}
    end

    def apply_discount
        if discount
            percent_off = self.discount.to_f / 100
            self.total -= (self.total * percent_off)
            "After the discount, the total comes to $#{self.total.round}."
        else 
            "There is no discount to apply."
        end
    end

   def void_last_transaction
        self.total -= @last_transaction[:price] * last_transaction[:quantity]
   end

end
