class CashRegister

    attr_accessor :total, :discount, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
      end

      def add_item(title, price, quantity = 1)
        transaction_total = price * quantity
        @total += transaction_total
        quantity.times do
            @items << title 
        end
        self.last_transaction = transaction_total
    end 

      def apply_discount 
        if @discount > 0
        @discount = @discount/100.to_f
        @total = @total - (@total * (@discount))
        "After the discount, the total comes to $#{@total.to_i}."
          else
        "There is no discount to apply."
          end
      end 

      def items
        @items 
      end 

      def void_last_transaction
       self.total = self.total - self.last_transaction
      end

end 
