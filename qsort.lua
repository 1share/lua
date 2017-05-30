local function swap(tt, a, b)

local r=tt[a]
	tt[a]=tt[b]
	tt[b]=r 
end

local function my_print(t)
	--print('-----------------')
	for i,v in ipairs(t) do
		print(i,v)
	end
	--print('=================')
end

local t = {4,5,3,6,8,9,10,7,2,1}

local function  getpart(t,s,e)

	local part    
	local i
	if s<=e then
		part = s
		for i=part+1,e do
			if t[i] <= t[s] then
				swap(t,part+1, i)
				part=part+1
			end
		end
		swap(t,s,part)
	end
	return part
end

local sort
sort = function(t,s,e)
	if (s>=e) then
		return
	end
	local part = getpart(t,s,e)
  	sort(t,s,part-1)
    	sort(t,part+1,e)
end

sort(t, 1, #t)

my_print(t)
