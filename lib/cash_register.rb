class CashRegister
  attr_accessor :total, :discount, :cart, :last

  def initialize(discount=0)
    @discount = discount
    @cart = Array.new
    @total = 0
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    self.last = price * quantity # to hold onto the value of the last item(s) passed in
    quantity.times do
      self.cart << title
    end
  end

  def apply_discount
    if self.discount != 0
      self.total -= self.total * self.discount/100.to_f
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    self.cart
  end

  def void_last_transaction
    self.total -= self.last
  end

end
