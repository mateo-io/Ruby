class Timer
	attr_reader :seconds

	def initialize
		@seconds=0
	end

	def seconds=(num)
		@seconds=num
	end

	def time_string
		m=0
		h=0
		while @seconds>60	#Adds the minutes and the hours and leaves seconds<60
			m+=1
			@seconds-=60
			(h+=1; m-=60) if m>60
		end
		holdingArray=[]
		string="#{h}:#{m}:#{@seconds}".split(":")
		string.each do |piece| 
		if piece.length<2
			holdingArray<<"0#{piece}" 
		else
		 holdingArray<<"#{piece}"
		 end
		end
		holdingArray.join(":")
		
	end

end