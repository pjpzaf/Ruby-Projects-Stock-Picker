require "pry"
require "pry-byebug"

def stock_picker(stock_data)

  trade_result = Hash.new
  # first_loop_counter = 0
  for day_bought in 0..(stock_data.length - 1)

    for day_sold in (day_bought + 1)..(stock_data.length - 1)
      trade_result[[day_bought,day_sold]] = stock_data[day_sold] - stock_data[day_bought] 
    end

  end

  p trade_result.key(trade_result.values.max)
  
end

stock_picker([17,3,6,9,15,8,6,1,10])