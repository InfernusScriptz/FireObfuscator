function stringObfuscate(input:string)
	if not input or input == "" then return "" end
	local output = input:gsub(".",
		function(func)
			return "\\"..func:byte()
		end)
		or input.."\""
	return output
end
function obfuscate(input:string)
	return "loadstring('"..stringObfuscate(input).."')()"
end
function obfuscate2(input:string)
	if not input or input == "" then return "" end

	local waterMarkText = "This file was protected by [🔥Fire Obfuscator🔥]"
	local waterMark = [[a=("]]..waterMarkText..[[") local a23vv2377v6v32b66v8b79v623946vb3v932b6vTheIdOfWaterMark3209477843838tghv74739907320v7 = a]]
	local input = waterMark.." do print(a); local a = 1; local b = 2; local c = 3; local d = 4; local e = 5; local f = {a,b,c,d,e}; --[[eat my ass; --]] for i,v in pairs(f) do f[i] += v end function encrypt(txt) return txt:reverse() end do if a == 1 and b == 2 and c == 3 and d == 4 and f and e == 5 then else error([[Bruh, tried to deobfuscate XD]]) end end function read(txt) return encrypt(txt) end end read(encrypt(a)) "..obfuscate("--[[its not a script, so, i will tell you a long history. I hope you will like it, and i will begin :D. Do you like pancakes? I like it so much! Also the next simple obfuscation is a history about local scripts, so, i hope you will like it too :D]]").." "..obfuscate("--[[Its not a script too, and the next one is not a script too, so, i will tell you a story about a local scripts :D! Local script - its a script, changes happending from a clients and dont visible from a server. But they are can fire remote event to make a server event!]]").." "..obfuscate(input).." "..obfuscate("--[[BANANAZ!!!@3ef jhfvne4iugni4erfiilherw,BANANAZ!!!@3ef jhfvne4iugni4erfiilherw,BANANAZ!!!@3ef jhfvne4iugni4erfiilherw,BANANAZ!!!@3ef jhfvne4iugni4erfiilherw,BANANAZ!!!@3ef jhfvne4iugni4erfiilherw,BANANAZ!!!@3ef jhfvne4iugni4erfiilherw,BANANAZ!!!@3ef jhfvne4iugni4erfiilherw,BANANAZ!!!@3ef jhfvne4iugni4erfiilherw,BANANAZ!!!@3ef jhfvne4iugni4erfiilherw,BANANAZ!!!@3ef jhfvne4iugni4erfiilherw,BANANAZ!!!@3ef jhfvne4iugni4erfiilherw,BANANAZ!!!@3ef jhfvne4iugni4erfiilherw,]]").." "..[[ do if a23vv2377v6v32b66v8b79v623946vb3v932b6vTheIdOfWaterMark3209477843838tghv74739907320v7 ~= ("]]..stringObfuscate(waterMarkText)..[[") then error("Do not change the watermark!") end]].." "..obfuscate("--[[Some random text, yep :D Some random text, yep :D Some random text, yep :D Some random text, yep :D Some random text, yep :D Some random text, yep :D Some random text, yep :D Some random text, yep :D Some random text, yep :D Some random text, yep :D Some random text, yep :D Some random text, yep :D Some random text, yep :D Some random text, yep :D]]").." end"
	local output = ""
	for i,v in pairs(input:split("\10")) do
		output = output..v.." "
	end
	local input = output
	output = ""
	for i,v in pairs(input:split("	")) do
		output = output..v
	end
	local output = output:gsub(".",
		function(func)
			return "\\"..func:byte()
		end)
		or input.."\""
	return 'loadstring("'..output..'")()'
end
return obfuscate2
