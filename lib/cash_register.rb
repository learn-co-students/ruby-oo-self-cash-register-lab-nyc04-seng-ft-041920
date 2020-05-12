require 'pry'
class CashRegister

    attr_accessor :discount , :total 

    def initialize(discount = nil)
        @total = 0 
        @discount = discount
        @items_added = []#list of items 
    end 

    def add_item(item, price, quantity=1)
        @total += price * quantity 
        quantity.times do 
            @items_added << [item, price, quantity]
        end 
    end 

    def apply_discount 
        if @discount
            @total = @total *(1- @discount/100.0)
           return "After the discount, the total comes to $#{@total.round}."
        end 
        "There is no discount to apply."
    end 

    def items 
        @items_added.map do |item|
            item[0]
        end 
    end 

    def void_last_transaction 
        quantity = @items_added[-1][2]
        quantity.times do 
            @total = @total - @items_added[-1][1]
        end 
    end 

end 