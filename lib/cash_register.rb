class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity

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
  end

  def apply_discount
    if @discount != nil
      total_discount = @total * @discount / 100
      @total -= total_discount
      puts "After the discount, the total comes to $#{@total}."
      else
        puts "There is no discount to apply."
      end
  end

end
