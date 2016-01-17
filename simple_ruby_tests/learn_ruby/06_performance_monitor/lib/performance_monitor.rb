def measure(n=1, &block)
	if n>1
		avg=0
		n.times do
			elapsed=Time.now
			block.call
			avg+=Time.now-elapsed
	end
		return avg/n
	else
	elapsed=Time.now
	block.call
	elapsed=Time.now-elapsed
end
end