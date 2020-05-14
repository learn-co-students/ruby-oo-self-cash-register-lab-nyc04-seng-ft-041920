require 'pry'
class CashRegister
  
  attr_accessor :discount, :total

  
  def initialize(discount = 0, total = 0)
    @total = total
    @discount = discount
    @items = []
    @price = []

  end
  
  def add_item(title, price, quantity=1)
    self.total+= price*quantity
    @price << price
    
    quantity.times do
      @items << title
    
    end
    
    # title.times do
    # @items << ele
    # end

  end
  
  def apply_discount
      if @discount != 0 
        difference = (@discount / 100.0)
        @total = @total - (difference*@total) 
        "After the discount, the total comes to $800."
      else
        "There is no discount to apply."
      end
  end
  
  def items
    @items
    
  end
  
  def void_last_transaction
    
    

    
    new = @price.pop
    self.total -= new
    
    if @price.empty?
      @total = 0.0
    end
    @total
  # # binding.pry
  #   # self.total - self.total
  


  end


end












