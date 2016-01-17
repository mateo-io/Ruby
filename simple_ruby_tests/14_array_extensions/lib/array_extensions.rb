class Array
	def sum
		return 0 if self.size==0
		self.inject{|total, num| total+=num }
	end

	def square
		self.map{|num| num*num}
	end

	def square!
		self.map!{|num| num*num}
	end	


end