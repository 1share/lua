local function bs1(a,s,e,t)
	local m = math.floor((s+e)/2)

	if s>e then
		return -1
	end

	if a[m] > t then
		return bs1(a,s,m-1,t)
	end

	if a[m] < t then
		return bs1(a,m+1,e,t)
	end

	return m
end


local function bs2(a,s,e,t)
	local m

	while s < e do
		m = math.floor((s+e)/2)

		if a[m] < t then
			s=m+1
		else
			e=m
		end
	end


	if a[s] == t then
		return s
	end

	return -1
end


local a = {1,3,5,7,9,11,13,7,15}
print(bs1(a,1,#a,7))


local b = {1,7,7,7,9,11,13,14,15}
print(bs2(b,1,#b,7))

