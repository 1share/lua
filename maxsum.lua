local function get_max_sum(a)
	local i
	local max = -math.pow(2,31)
	local sum = 0

	for i=1,#a do
		sum = sum + a[i]

		if sum > max then
			max = sum
		elseif sum < 0 then
			sum = 0
		end
	end

	return max
end


local a = {1,-2,3,10,-4,7,2,-5}

print(get_max_sum(a))


