class CashRegister
    attr_accessor :total, :discount, :last_transaction

    def initialize (discount = nil)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        p @total
    end

    def add_item (item_name, price, quantity = 1)
        transaction_total = price * quantity
        @total += transaction_total
        quantity.times do
            @items.push(item_name)
        end
        self.last_transaction = transaction_total
    end

    def apply_discount
        if @discount != nil
            @total *= ((100.00 - @discount)/100)
            p "After the discount, the total comes to $#{@total.to_i}."
        else 
            "There is no discount to apply."
        end
    end

    def items
        p @items
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    end

end

broccoli = CashRegister.new(20)
broccoli.add_item("broccoli", 100, 1)
broccoli.add_item("vinegar", 100, 1)

broccoli.items
