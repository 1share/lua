local function split(ip)
	local res = {}
	local f=1
	local r=0
	local lr=0
	local count=1	

	while true do
		r = string.find(ip, "%.",f)
		if r == nil then break end

		res[count]=string.sub(ip,f,r-1)
		count = count + 1
		f=f+r-lr 
		lr=r
	end	
	res[count]=string.sub(ip,f)


	return res
end

local function change(ip)
	local res = split(ip)

	for k,v in pairs(res) do
		print(k,v)
	end

	local sum = 0
	local tmp = 0

	for k,v in pairs(res) do

		sum = sum * 256
		sum =  sum + tonumber(v)
	end

	return sum
end


print(change("123.45.67.89"))

