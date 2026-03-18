def max_profit(prices)
  current_max = 0
  remaining = prices.dup
  prices.each do |price|
    remaining.shift
    max_selling_price = remaining.max
    p "Buying price #{price}"
    p "max_selling_price #{max_selling_price}"
    profit =  (max_selling_price.nil? ? 0 : max_selling_price) - price
    p "profit #{profit}"
    current_max = profit if profit > current_max
  end

  current_max
end

prices = [2,1,2,0,1]

p max_profit(prices)