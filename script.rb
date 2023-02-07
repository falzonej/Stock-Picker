current_week_prices = [17,3,6,9,15,8,6,1,10,4]


def get_min_num_index(array)
  array.find_index(array.min())
end

def slice_array(array)
  sliced_array = array.slice(array.find_index(array.min()), array.length)
  sliced_array.minmax
end

p slice_array(current_week_prices)
p get_min_num_index(current_week_prices)