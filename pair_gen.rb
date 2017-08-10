def random_pair(name_arr)

	array = name_arr.shuffle.each_slice(2).to_a
	if name_arr.length % 2 == 0
  		p array
  	else

  	array[array.length - 2]  <<  array[array.length - 1] 
  	array[array.length - 2].flatten!
  	array.slice!(array.length - 1)
  	p array
	end
end


def array_smasher(arr)
	str_arr = []
	arr.each do |value|
		if value.length == 3
			x = "#{value[0]}, #{value[1]}, and #{value[2]}"
		else
		 	x = "#{value[0]} and #{value[1]}"
		end
		str_arr << x
	end
	str_arr
end
