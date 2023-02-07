current_week_prices = [17,3,6,9,15,8,6,1,10,4]

#min_price = current_week_prices.min()
#min_price_index = current_week_prices.find_index(current_week_prices.min())
sliced_prices = current_week_prices.slice(current_week_prices.find_index(current_week_prices.min()), current_week_prices.length)
sliced_prices.minmax()

def slice_array(array)
  sliced_array = array.slice(array.find_index(array.min()), array.length)
  sliced_array.minmax
end

p slice_array(current_week_prices)
