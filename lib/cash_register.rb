
require 'pry'

class CashRegister

  attr_accessor :total, :discount, :price, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
      quantity.times { @items << title }
      @last_transaction = price * quantity
  end

  def apply_discount
    if @discount != 0
      @total = (@total * (100 - discount) / 100)
      # binding.pry
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    return @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
