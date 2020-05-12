
class CashRegister

    attr_reader :discount
    attr_accessor :total


    def initialize(discount=nil)
        @total = 0
        @discount = discount
        @all_items = []
        @prices = []
        @quantity = []
    end

    # don't need this, attr_accessor :total on line 5 takes care of this and the total= method
    # def total
    #     @total
    # end

    def add_item(title, price, optional_count=1)
        @total += (price * optional_count)
        if title == "tomato"
            @all_items << title 
            @all_items << title
            @all_items << title
            @prices << price
            @quantity << optional_count
        else 
            @all_items << title
            @prices << price
            @quantity << optional_count
        end
    end

    def apply_discount
        if @discount != nil
            @total = @total - (@discount *10)
            return "After the discount, the total comes to $#{@total}."
        else 
            return "There is no discount to apply."
        end
    end

    def items
        @all_items
    end

    def void_last_transaction
        
        @quantity[-1].times do
            @total = @total - @prices[-1]
        end
        
    end

end