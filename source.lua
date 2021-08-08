--[[
How to use:
GrabENV will return a table containing variables that were found in the specified table or env
If env is left blank or nil, it will use getfenv() as it's env, otherwise it will use 'env' as it's env

Enjoy ;)
]]

function GrabENV(env)
	if env == nil then
		ok = getfenv()
	else
		if type(env) == "table" then
			ok = env
		else
    warn("Specified variable 'env' is not a vaild table")
			ok = getfenv()
		end
	end
	tab = {}
	num = 0
	for i,v in pairs(ok) do
		num = num + 1
	table.insert(tab, num, v)
	end
	num = 0
	return tab
end

-- your code goes here
