class CashRegister
    attr_accessor :total, :discount, :items
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity=1)
        self.items.fill(item, self.items.size, quantity)
        self.total += (price * quantity)
        @last_transaction = [item, price, quantity]
    end

    def apply_discount
        if self.discount == 0
            p "There is no discount to apply."
        else
            self.total -= (self.total * self.discount / 100)
            p "After the discount, the total comes to $#{self.total}."
        end
    end
    
    def items
        @items
    end

    def void_last_transaction
        self.items.pop
        self.total -= (@last_transaction[1] * @last_transaction[2])
        self.total.to_f
    end

end