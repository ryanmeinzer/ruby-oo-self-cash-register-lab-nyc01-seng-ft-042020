
require 'pry'

class CashRegister

  attr_accessor :total, :discount, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    # {new hash} << item, price, quantity
    @items << title
  end

  def apply_discount
    if @discount != 0
      self.total = (@total * (100 - discount) / 100)
      # binding.pry
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    return @items
  end
  #
  # def void_last_transaction
  # end

end
