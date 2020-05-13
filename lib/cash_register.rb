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
        @total += (price * quantity)
        quantity.times do
            @items << title
        end
        @last_transaction_amount = price * quantity
    end

    def apply_discount
        if discount > 0
            @total -= (@total * @discount) / 100
            return "After the discount, the total comes to $#{self.total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_transaction_amount
        if @items == []
            @total = 0.to_f
        end
    end

end