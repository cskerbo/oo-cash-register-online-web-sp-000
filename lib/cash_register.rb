class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = nil)
    @title = title
    @price = price
    @quantity = quantity
    @total += @price * @quantity.to_f
  end
end
