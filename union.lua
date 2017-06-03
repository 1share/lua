local function swap(t,a,b)
	local tmp = t[a]
	t[a] = t[b]
	t[b] = tmp
end

local function getpartition(t,s,e)
	local part
	local i
	
	part = s

	for i=part+1,e do
		if t[i] < t[part] then
			swap(t,i,part+1)
			part=part+1
		end

	end
	swap(t,s,part)	


	return part
end


local function qsort(t,s,e)
	if s>e then return end

	local m = getpartition(t,s,e)

	qsort(t,s,m-1)
	qsort(t,m+1,e)

end

local function union(a,b)
	local c = {}
	local i

	for i=1,#a do
		c[i]=a[i]
	end

	for i=1,#b do
		c[#a+i]=b[i]
	end
	
	qsort(c,1,#a+#b)

	local t = 0
	local count = 1
	for i=1,#a+#b do
		if c[i] ~= t then
			c[count] = c[i]
			count = count + 1
		end

		t = c[i]
	end

	return c,count-1
end


local function my_print(t,count)
	local i

	for i=1,count do
		print(t[i])
	end
end


local a = {1,5,7,6,8};
local b = {3,7,2,1,9,10};

local c,count = union(a,b)

my_print(c,count)



