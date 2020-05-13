require 'pry'

class CashRegister
    attr_reader :items
    attr_accessor :discount, :total, :last_transaction_amount

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction_amount = 0
    end

    def add_item(title, price, quantity=1)
        self.total += (price * quantity)
        quantity.times do
            self.items << title
        end
        self.last_transaction_amount = price * quantity
    end

    def apply_discount
        if discount > 0
            self.total -= (self.total * self.discount) / 100
            return "After the discount, the total comes to $#{self.total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction_amount
        if self.items == []
            self.total = 0.to_f
        end
    end

end