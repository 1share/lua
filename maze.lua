local K = {
	L=1,
	R=8,
	U=1,
	D=10,
}

local m = {}
m[1]={0,0,1,0,0,0,1,0}
m[2]={0,0,1,0,0,0,1,0}
m[3]={0,0,0,0,1,1,0,1}
m[4]={0,1,1,1,0,0,1,0}
m[5]={0,0,0,1,0,0,0,0}
m[6]={0,1,0,0,0,1,0,1}
m[7]={0,1,1,1,1,0,0,1}
m[8]={1,1,0,0,1,1,0,1}
m[9]={1,1,0,0,1,1,0,0}
m[10]={1,1,0,0,0,0,1,0}


local function run(m,row,col)
	local over = 0
	m[row][col] = 2
	
	if row == K.D and col == K.R then
		over = 1
	end	

	if over ~= 1 and col+1 <= K.R and m[row][col+1] == 0 then
		if run(m,row,col+1) == 1 then over = 1 end
	end

	if over ~= 1 and row+1 <= K.D and m[row+1][col] == 0 then
		if run(m,row+1,col) == 1 then over = 1 end
	end

	if over ~= 1 and col-1 >= K.U and m[row][col-1] == 0 then
		if run(m,row,col-1) == 1 then over = 1 end
	end

	if over ~= 1 and row-1 >= K.L and m[row-1][col] == 0 then
		if run(m,row-1,col) == 1 then over = 1 end
	end

	if over ~= 1 then
		m[row][col] = 0
	end

	return over
end

local function my_print(info)
	io.write(info)
end

run(m,1,1)

local i,j
for i=K.U,K.D do
	for j=K.L,K.R do	
		if m[i][j]==2 then
			my_print("$")
		end
		if m[i][j]==1 then
			my_print("#")
		end
		if m[i][j]==0 then
			my_print(" ")
		end
	end
	my_print("\n")	
end



















