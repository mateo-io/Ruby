class Friend
	def greeting(param=nil)
		return "Hello, #{param}!"unless param.nil?
		"Hello!"
	end
end