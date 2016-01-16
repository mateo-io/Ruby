def bubble_sort (array)
	holder=nil
	iter=0
		
	array.each do

		holder=nil

		for i in (0..array.size-2-iter)
		  if (array[i]<=>array[i+1])==-1
		  	next
		  else
		  	holder=array[i]
			array[i]=array[i+1]
		  	array[i+1]=holder
		  end
		end

		iter+=1
		break if holder.nil?  #If no changes were made then holder is still nil from line 8 and we are done!
	end
	print array.to_s+"\n"
end

def bubble_sort_by (array)
  iter=0

  array.each do

  for i in (0..array.size-2-iter)
    if yield(array[i], array[i+1])<0
    	holder=array[i]
    	array[i]=array[i+1]
    	array[1+1]=holder
    else
    	next
    end
  end
  iter+=1
  break if holder.nil?
 end
 print array.to_s+"\n"
end

bubble_sort([1,2,3,4,9,5,10])

bubble_sort_by(["hi","hello","hey"]) { |left, right| right.length - left.length }
bubble_sort_by(["hi","hello","hey"]) { |left, right| left.length - right.length }