current_week_prices = [17,3,6,9,15,8,6,1,10,4]

min_price = current_week_prices.min()
min_price_index = current_week_prices.find_index(min_price)
sliced_prices = current_week_prices.slice(min_price_index, current_week_prices.length)
p sliced_prices.minmax()