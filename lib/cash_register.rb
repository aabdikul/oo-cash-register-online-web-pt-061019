class CashRegister

  attr_accessor :total, :discount

  def initialize(input_discount = 0)
    @total = 0
    @discount = input_discount
  end

  def add_item(item,price,quantity=1)
    @total += price
    if quantity > 1
      @total = quantity * price
    end
  end

end
