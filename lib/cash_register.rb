
# class CashRegister
#     attr_accessor :total, :discount, :item, :price, :title, :quantity

    

#    def initialize(discount = 20)
#     @total = 0
#     @discount = discount
#     @item = []
#     @price = price
#    end


#    def add_item(title, price, quantity = 1)
    
#         title_info = {}
#         title_info[:name] = title
#         title_info[:price] = price
#         title_info[:quantity] = quantity
        
#         @item << title_info
    
#          @total += price * quantity
    
#     end

#     def apply_discount
#         self.total == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{self.total = self.total * 8 / 10 }."
#       end

#     # def apply_discount
  #   if discount != 0
  #     self.total = (total * ((100.0 - discount.to_f)/100)).to_i
  #     "After the discount, the total comes to $#{self.total}."
  #   else
  #     "There is no discount to apply."
  #   end
  # end
    


# end


class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = amount * quantity
  end


  def apply_discount
            self.total == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{self.total = self.total * 8 / 10 }."
          end



  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end