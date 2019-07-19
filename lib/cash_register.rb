class CashRegister

  attr_accessor :total, :discount

  def initialize(input_discount = 0)
    @total = 0
    @discount = input_discount
  end

  def add_item(item,price,quantity=1)
    @total += price * quantity
  end

  def apply_discount()
    new_variable = @discount.to_f/100
    @total = (1-new_variable) * @total
    return "After the discount, the total comes to $#{@total.to_i}."
  end

end
