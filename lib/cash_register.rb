class CashRegister
    attr_accessor :total
    attr_reader :discount
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @item = []
        @prices = []
    end

    def add_item(title, price, quantity = 1)
        quantity.times {@item << title}
        @prices << price*quantity
        self.total = @prices.reduce(:+)
    end

    def apply_discount
        if self.discount == 0
            p "There is no discount to apply."
        else
            discount = @total*0.20
            @total = @total - discount
            p "After the discount, the total comes to $800."
        end
    end

    def items
        @item
    end

    def void_last_transaction
        @item.pop
        @prices.pop

        if @prices.empty? == true 
            self.total = 0.0
        else
            self.total = @prices.reduce(:+)
        end
        
    end
end