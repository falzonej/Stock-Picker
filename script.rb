require 'pry-byebug'

current_week_prices = [17,3,1,6,9,15,8,6,1,10]


def get_min_num_index(array)
  array.find_index(array.min())
end

def delete_array_element(array)
  array.each do |price|
    price_index = array.find_index(price) 
    min_price_index = array.find_index(array.min())
    if price_index == min_price_index
      array.delete_at(min_price_index)
      return array
    end
  end
end

def get_minmax(array)
  sliced_array = array.slice(get_min_num_index(array), array.length)
  sliced_array.minmax
end

def add_found_pair_to_hash(array)
  output_hash = {}
  minmax_values = get_minmax(array)
  output_hash[minmax_values[1] - minmax_values[0]] = minmax_values
  output_hash
end
 
def get_profit_pairs(array)
  profit_pairs = {}
  input_array = array
  (array.length).times do
    profit_pairs = profit_pairs.merge(add_found_pair_to_hash(input_array))
    input_array = delete_array_element(input_array)
  end
  profit_pairs

end

def show_highest_profit_pair(array)
  profit_pairs = get_profit_pairs(array)
  profit_pairs.each { |k,v| puts v if k == profit_pairs.keys.max}
end



p show_highest_profit_pair(current_week_prices)

#p get_profit_pairs(current_week_prices)
#p add_found_pair_to_hash(current_week_prices)
#p output_hash
#p get_minmax(current_week_prices)
#p get_min_num_index(current_week_prices)
#p delete_array_element(current_week_prices)
#p stock_picker(current_week_prices)

#takes return value of get_minmax() and adds it to the output_hash{}
#minmax_values = get_minmax(current_week_prices)
#output_hash[minmax_values[1] - minmax_values[0]] = minmax_values