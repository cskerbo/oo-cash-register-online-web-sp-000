class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity
  @@item_list = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 0)
    @title = title
    @price = price
    @quantity = quantity
    if @quantity == 0
      @total += @price
    else
      @total += @price * @quantity
    end
    @@item_list << self.title
  end

  def apply_discount
    total_discount = @total * @discount / 100
    @total -= total_discount
    if total_discount != 0
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @@item_list
  end

end
