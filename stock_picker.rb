def stock_picker stocks
	accounting={}
	lowestDay=0
	highestDay=0
	day_pair={}

	stocks.size.times do 
	
			lowestDay=0

			stocks.each{|stock| lowestDay=stocks.index(stock) if stock!=stocks.last && accounting[stocks.index(stock)]==nil && stock<stocks[lowestDay]}
			
			highestDay=1
			
			stocks.each{ |stock| highestDay=stocks.index(stock) if stock>stocks[highestDay] && stock!=stocks.first && (stocks.index(stock)>lowestDay || stocks.index(stock)<stocks.index(stock)) }
			
			
			break if stocks[highestDay]<stocks[lowestDay]


			profits=stocks[highestDay]-stocks[lowestDay]

			#Keep track of profits and the combination of lowestDay, highestDay index where they occured
			day_pair[lowestDay]=highestDay
			accounting[lowestDay]=profits


			#Return highest profits
			highest=accounting.max_by{|k,v| v}
			


			end
		highest=accounting.max_by{|k,v| v}
		puts "[#{highest[0]}, #{day_pair[highest[0]]}]"  #highest[0] is the lowestDay index 
		puts "Profit of #{accounting[highest[0]]} \n\n"
end

stock_picker([1,4,5,6,3,2,3,5,6])
stock_picker([17,3,6,9,15,8,6,1,10])


