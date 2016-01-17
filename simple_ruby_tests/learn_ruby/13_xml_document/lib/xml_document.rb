class XmlDocument
	def initialize(indent=false)
		@indent=indent
	end

	def hello(a='/')
		if a=='/' && !block_given?
			"<hello#{a}>"
		
		elsif a.class==Hash
		"<hello #{a.keys[0]}='#{a.values[0]}'/>"
		
		elsif block_given? && !@indent
			b=yield
			"<hello>#{b}</hello>"
		else 	                    
			b=yield  #<-------------here's the problem, the others use block call vs yield
			"<hello>#{b}\n</hello>\n"

		end

	end

	def send(random)
		"<#{random}/>"
	end

	def goodbye
	if block_given? && !@indent
		a=yield
		"<goodbye>#{a}</goodbye>"
	elsif !@indent
		"<goodbye/>"
	else
		a=yield
		"\n  <goodbye>#{a}\n  </goodbye>"
		
	end

	end

	def come_back(&block)
		if !@indent
			a=block.call
			"<come_back>#{a}</come_back>"
		else 
			a=block.call
			"\n    <come_back>#{a}    </come_back>"
		end

	end

	def ok_fine(a)
		if @indent
			"\n      <ok_fine #{a.keys[0]}='#{a.values[0]}'/>\n"
		else
			"<ok_fine #{a.keys[0]}='#{a.values[0]}'/>"
		end
	end



end