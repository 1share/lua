


local function isdigt(c)
	if string.byte(c)-string.byte('0') >=0 and string.byte(c)-string.byte('0') <= 9 then
		return 1
	end

	return 0
end



local function change(s)	
	local l = string.len(s)	
	local i=1

	local len=0
	local maxlen=0
	local bt=0
	local b=0

	while(i<=l) do
		while true do
			if isdigt(string.char(string.byte(s,i))) == 0 then
				i = i + 1
				break	
			end

			bt = i
			len = 0
			while(isdigt(string.char(string.byte(s,i))) == 1) do
				print(string.char(string.byte(s,i)))
				len = len + 1	
				i = i + 1
			end

			if len > maxlen then
				maxlen = len
				b = bt
			end
		end
	end
	return string.sub(s,b,b+maxlen-1) 

end

local s = "abcd12345ed125ss1239aa"

print(change(s))

