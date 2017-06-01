local function bs(a,s,e,t)
	local m = math.floor((s+e)/2)

	if s > e then
		return -1
	end

	if a[m] > t then
		return bs(a,s,m-1,t)

	elseif a[m]  < t then
		return bs(a,m+1,e,t)
	end

	return m
end

local function search(a,s,e,t)
	local m = math.floor((s+e)/2)

	if a[m] > a[s] then
		if a[m] >= t and t >= a[s] then
			return bs(a,s,m,t)
		else
			return search(a,m,e,t)
		end
	else 
		if a[m] <= t and t <= a[e] then
			return bs(a,m,e,t)
		else
			return search(a,s,m,t)
		end
	end
end

local c = {1,2,3,4,5}
print(bs(c,1,#c,3))

local a = {3,4,5,6,7,8,9,0,1,2}
print(search(a,1,#a,0))

local b = {7,8,9,0,1,2,3,4,5,6}
print(search(b,1,#b,0))

