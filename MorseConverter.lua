-- Morse Encoder/Decoder "Project" By Nika (Top GEO)


local Enc = function (Text)
 local function Check(C) --Checker For Check If String Uses Only A-Z And 0-9 Characters .
 if string.byte(C) >= 65 and string.byte(C) <= 90 or string.byte(C) >= 48 and string.byte(C) <= 57 then 
return true
else
return Text
 end
 end
    Text = string.upper(_G["tostring"](Text))
 local Nums , Words , E , E2 , __ = {".----","..---","...--","....-",".....","-....","--...","---..","----.","-----"} , {".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."} , "" , ""
     for i = 1, #Text do
          local c = string.sub(Text, i)
          c = "\""..c.."\""
         if __ == nil then __ = ""
    E = E..c
    else
        E = E..","..c
        end
        end
        _G["load"]("Table = {"..E.."}")()
        for I , l in _G["pairs"](_G["Table"]) do
        local CH = Check(l)
        if CH == true then
        local TN = _G["tonumber"](l)
        if TN then
        if TN == 0 then TN = 10 end
        E2 = E2.." "..Nums[TN]
        else
        local TS = _G["tostring"](l)
        E2 = E2.." "..Words[string.byte(TS)-64]
        end
        else
      --  print("Error Characters Detected In String :\n \""..CH.."\" .\n\nYou Can Use [A-Z] And [0-9] Characters Only (In Morse Alphabet) .") os.exit()
        end
        end
return E2
end
local Dec = function (C)
local function Split(Text)
load("Table = {\""..string.gsub(Text," ","\",\"").."\"}")()
return Table
        end
        local F , E = {".----","..---","...--","....-",".....","-....","--...","---..","----.","-----",".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--..","1","2","3","4","5","6","7","8","9","0","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"} , ""
       for j , k in pairs(Split(C)) do
       for J , K in pairs(F) do
       if k == K then E = E..F[J+36]
       end
       end
       end
       return E
       end
       
       
local T = "HELLOWORLD"
print("Encode :"..Enc(T))
print("Decode :"..Dec(Enc(T)))
