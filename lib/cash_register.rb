# require('pry')

class CashRegister
    #attr_writer :total, :discount
    attr_accessor :total, :discount, :title, :items
    attr_reader :last_item_price

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_item_price = 0
    end
    
    def add_item(title, price, quantity=1)
        @total += price*quantity
        quantity.times{|i| @items << title }
        @last_item_price = price*quantity

    end

    def apply_discount
        # binding.pry
        if discount == 0
            "There is no discount to apply."
        else
            @total = (@total - @total*(@discount.to_f/100)).to_i
            "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
        # self.items.pop
        # self.items == []? self.total = 0.0 
        self.total = self.total - self.last_item_price
    end

end

# cr = CashRegister.new(10)
# cr.add_item("apple", 5, 3)
# cr.apply_discount
