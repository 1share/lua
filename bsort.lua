local function swap(tt, a,b)
	local r=tt[a]
	tt[a]=tt[b]
	tt[b]=r 
end

local function my_print(t)
	for i,v in ipairs(t) do
		print(i,v)
	end
end

local t = {4,2,8,10,9,7,6,5,3,1}

local function sort(t)
	local r=0

	for i=1, #t-1 do
		for j=1, #t-i do
			if (t[j]>t[j+1]) then
				r=t[j]
				t[j]=t[j+1]
				t[j+1]=r 
			end

		end
	end


end

sort(t)

my_print(t)
