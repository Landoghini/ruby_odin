def stock_picker(prices)
	max_gain, buy_day, sell_day = 0,0,0
	pres_day = 0

	while prices.length > 0
		pres_price = prices.shift
		prices.each_with_index do |price, day|
			if pres_price - price > max_gain
				buy_day = pres_day
				sell_day = day + pres_day + 1
				max_gain = pres_price - price 
			end
		end
		pres_day +=1
	end
	puts "You should buy on day #{buy_day.to_s} and sell on day #{sell_day.to_s} for a gain of $#{max_gain.to_s}"
	[buy_day, sell_day]
end