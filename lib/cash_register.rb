# frozen_string_literal: true

require 'pry'

class CashRegister
  # create a attribute accessor for total and discount so we can get and set it
  attr_accessor :total, :discount
  # make discount an optional varriable by assigning it 0 by default
  def initialize discount=0
    @total = 0
    @discount = discount
    @items = []
    @prices = []
    @quan = 0
  end

  def add_item title, price, quantity=0
    # if quantity is more than 1 then we need to add the items by the amount of quantity
    if quantity > 1
      # adding the item to the items arr by how many quantities
      quantity.times {@items << title}
      # adding the price to the prices arr by how many quantities
      quantity.times {@prices << price}
      # adding to the total the price multiplied by how many
      self.total += price * quantity
      # assign quantity to the quan instance var
      @quan = quantity
    else
      # so now we know is just one item
      @items << title
      @prices << price
      self.total += price
    end
  end

  def apply_discount
    # check if discount is more than 0
    if @discount > 0
      # then assign the percentage of the discount to the total
    self.total = self.total - self.total * discount / 100
    "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    # return the instance var of items which is an array of all items added
    @items
  end

  def void_last_transaction
    # binding.pry
    # if my quantity instance variable is more than 1 then i have to multiply the last price with the amount of quantity
    if @quan > 1
      # made a local var and assign it the amount i need to subtract
      amount_to_subtract = @prices[-1] * @quan
      # then subtract that amount from total
      self.total -= amount_to_subtract
    else
      # so we know that the quantity is not more than 1 so we just subtract the last price from total
      self.total -= @prices[-1]
    end
    # if the length of the instance var array of items is 0 then return 0.0
      if self.items.length == 0
        self.total = 0.0
      end
  end
end

# self.total -= @prices[-1]
#       self.prices.pop
#       self.items.pop
