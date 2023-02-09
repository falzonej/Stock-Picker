current_week_prices = [17,3,6,9,15,8,6,1,10,4]


def get_min_num_index(array)
  array.find_index(array.min())
end

def delete_array_element(array)
  cleaned_array = array.reject {|price| price == array.min()}
end

def slice_array(array)
  sliced_array = array.slice(get_min_num_index(array), array.length)
  sliced_array.minmax
end

def add_found_pair_to_hash(array)
  profit_pairs = {}
  minmax_values = slice_array(array)
  profit_pairs[minmax_values[1] - minmax_values[0]] = minmax_values
  profit_pairs
end


#p add_found_pair_to_hash(current_week_prices)
#p profit_pairs
#p slice_array(current_week_prices)
#p get_min_num_index(current_week_prices)
#p delete_array_element(current_week_prices)
#p stock_picker(current_week_prices)

#takes return value of slice_array() and adds it to the profit_pairs{}
#minmax_values = slice_array(current_week_prices)
#profit_pairs[minmax_values[1] - minmax_values[0]] = minmax_values