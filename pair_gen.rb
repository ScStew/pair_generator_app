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


def array_moosher(multi_d_arr)
	empty_arr = []
	multi_d_arr.each do |value|
		if value.length == 3
			x = "#{value[0]}, #{value[1]}, and #{value[2]}" + "<br>"
		else
		 	x = "#{value[0]} and #{value[1]}" + "<br>"
		end
		empty_arr << x
	end
	empty_arr
end

def capital(arr)
	empty_arr = []
	arr.each do |names|
		x = names.capitalize
		empty_arr << x
	end
	empty_arr
end


def string_maker(arr)
	empty_str = ""
		arr.each do |pair|
			
			empty_str << pair
		end
	empty_str
end