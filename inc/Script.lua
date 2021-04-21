--[[
#  ▄█    █▄     ▄████████    ▄████████    ▄████████  Channel : @VeerCli 
# ███    ███   ███    ███   ███    ███   ███    ███ 
# ███    ███   ███    █▀    ███    █▀    ███    ███ 
# ███    ███  ▄███▄▄▄      ▄███▄▄▄      ▄███▄▄▄▄██▀  Bot : @VeerCliBot
# ███    ███ ▀▀███▀▀▀     ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   
# ███    ███   ███    █▄    ███    █▄  ▀███████████ Dev : @RSAIED and @YYBYY
# ███    ███   ███    ███   ███    ███   ███    ███ 
#  ▀██████▀    ██████████   ██████████   ███    ███  By Source Veer
#                                        ███    ███ 
#------------------------------------------------------
]]

local function iVeer(msg,MsgText)

if msg.type ~= 'pv' then

if MsgText[1] == "تفعيل" and not MsgText[2] then
return modadd(msg)  
end

--=================================================


--===============================================
 
if MsgText[1] == "تعطيل" and not MsgText[2] then
if not msg.SudoUser then return '🛠*¦* أنـت لـسـت الـمـطـور ⚙️'end
if not redis:get(veer..'group:add'..msg.chat_id_) then return '🛠*¦* المجموعه بالتأكيد ✓️ تم تعطيلها' end  
rem_data_group(msg.chat_id_)
return '📛*¦* تـم تـعـطـيـل الـمـجـمـوعـه ⚠️'
end
end
 

if msg.type ~= 'pv' and msg.GroupActive then 

if MsgText[1] == "ايدي" or MsgText[1]:lower() == "id" then
if not MsgText[2] and not msg.reply_id then
if redis:get(veer..'lock_id'..msg.chat_id_) then
GetUserID(msg.sender_user_id_,function(arg,data)
local msgs = redis:get(veer..'msgs:'..data.id_..':'..arg.chat_id_) or 1
if data.username_ then UserNameID = "🎫¦ مـعرفك •⊱ @"..data.username_.." ⊰•\n" else UserNameID = "" end
if data.username_ then UserNameVeer = '@'..data.username_ else UserNameVeer = 'لا يوجد' end
if data.last_name_ then Name = data.first_name_ .." "..data.last_name_ else Name = data.first_name_ end
local Namei = FlterName(data,20)
local NumGhaVeer = (redis:get(veer..':adduser:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local editedveer = (redis:get(veer..':edited:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local gamesveer = (redis:get(veer..':User_Points:'..msg.chat_id_..msg.sender_user_id_) or 0)
if not redis:get(veer..':lock_id_photo:'..arg.chat_id_) then
IdVeerSaied = (redis:get(veer..'idveer:msg'..msg.chat_id_) or 
'👤¦ أســمـك •⊱ { '..Namei..' } ⊰•\n'
..'['..UserNameID..']'
..'🏷¦ ايديــك •⊱ {`'..data.id_..'`} ⊰•\n\n'
..'📮¦ رتبتـــك •⊱ '..arg.TheRank..' ⊰•\n'
..'⭐️¦ تفاعـلك » '..Get_Ttl(msgs)..'\n'
..'💬¦ رسائلك •⊱ {'..msgs..'} ⊰•\n➖')
local IdVeerSaied = IdVeerSaied:gsub("{الاسم}",Namei)
local IdVeerSaied = IdVeerSaied:gsub("{المعرف}",UserNameVeer)
IdVeerSaied = IdVeerSaied:gsub("{الايدي}",data.id_)
IdVeerSaied = IdVeerSaied:gsub("{الرتبه}",arg.TheRank)
IdVeerSaied = IdVeerSaied:gsub("{التفاعل}",Get_Ttl(msgs))
IdVeerSaied = IdVeerSaied:gsub("{الرسائل}",msgs)
IdVeerSaied = IdVeerSaied:gsub("{الجهات}",NumGhaVeer)
IdVeerSaied = IdVeerSaied:gsub("{السحكات}",editedveer)
IdVeerSaied = IdVeerSaied:gsub("{النقاط}",gamesveer)
sendMsg(arg.chat_id_,arg.id_,IdVeerSaied)
return false
end
if data.status_.ID == "UserStatusEmpty" then
IdVeerSaied = (redis:get(veer..'idveer:msg'..msg.chat_id_) or 
'📛¦ لا يمكنني عرض صورة بروفايلك لانك قمت بحظر البوت ... !\n\n'
..'👤¦ أســمـك •⊱ { '..Namei..' } ⊰•\n'
..'['..UserNameID..']'
..'🏷¦ ايديــك •⊱ {`'..data.id_..'`} ⊰•\n\n'
..'📮¦ رتبتـــك •⊱ '..arg.TheRank..' ⊰•\n'
..'⭐️¦ تفاعـلك » '..Get_Ttl(msgs)..'\n'
..'💬¦ رسائلك •⊱ {'..msgs..'} ⊰•\n'
..'🖲¦ نقاطك •⊱ {'..gamesveer..'} ⊰•\n➖')
local IdVeerSaied = IdVeerSaied:gsub("{الاسم}",Namei)
local IdVeerSaied = IdVeerSaied:gsub("{المعرف}",UserNameVeer)
IdVeerSaied = IdVeerSaied:gsub("{الايدي}",data.id_)
IdVeerSaied = IdVeerSaied:gsub("{الرتبه}",arg.TheRank)
IdVeerSaied = IdVeerSaied:gsub("{التفاعل}",Get_Ttl(msgs))
IdVeerSaied = IdVeerSaied:gsub("{الرسائل}",msgs)
IdVeerSaied = IdVeerSaied:gsub("{الجهات}",NumGhaVeer)
IdVeerSaied = IdVeerSaied:gsub("{السحكات}",editedveer)
IdVeerSaied = IdVeerSaied:gsub("{النقاط}",gamesveer)
sendMsg(arg.chat_id_,arg.id_,IdVeerSaied)
else
GetPhotoUser(data.id_,function(arg,data)
if data.photos_ and data.photos_[0] then 
IdVeerSaied = (redis:get(veer..'idveer:msg'..msg.chat_id_) or 
'👤¦ أســمـك •⊱ { '..arg.Namei..' } ⊰•\n'
..'🎟¦ ايديــك •⊱ {'..arg.sender_user_id_..'} ⊰•\n'
..arg.UserNameID
..'📡¦ رتبتـــك •⊱ '..arg.TheRank..' ⊰•\n'
..'⭐️¦ تفاعـلك •⊱ '..Get_Ttl(arg.msgs)..'⊰•\n'
..'💬¦ رسائلك •⊱ {'..arg.msgs..'} ⊰•\n'
..'🖲¦ نقاطك •⊱ {'..gamesveer..'} ⊰•\n➖')
local IdVeerSaied = IdVeerSaied:gsub("{الاسم}",arg.Namei)
local IdVeerSaied = IdVeerSaied:gsub("{المعرف}",UserNameVeer)
IdVeerSaied = IdVeerSaied:gsub("{الايدي}",arg.sender_user_id_)
IdVeerSaied = IdVeerSaied:gsub("{الرتبه}",arg.TheRank)
IdVeerSaied = IdVeerSaied:gsub("{التفاعل}",Get_Ttl(arg.msgs))
IdVeerSaied = IdVeerSaied:gsub("{الرسائل}",arg.msgs)
IdVeerSaied = IdVeerSaied:gsub("{الجهات}",NumGhaVeer)
IdVeerSaied = IdVeerSaied:gsub("{السحكات}",editedveer)
IdVeerSaied = IdVeerSaied:gsub("{النقاط}",gamesveer)
sendPhoto(arg.chat_id_,arg.id_,data.photos_[0].sizes_[1].photo_.persistent_id_,IdVeerSaied,dl_cb,nil)
else
IdVeerSaied = (redis:get(veer..'idveer:msg'..msg.chat_id_) or 
'🚸¦ لا يوجد صوره في بروفايلك ... !\n\n'
..'👤¦ أســمـك •⊱ { '..arg.Namei..' } ⊰•\n'
..'['..arg.UserNameID..']'
..'🏷¦ ايديــك •⊱ {`'..arg.sender_user_id_..'`} ⊰•\n\n'
..'📮¦ رتبتـــك •⊱ '..arg.TheRank..' ⊰•\n'
..'⭐️¦ تفاعـلك » '..Get_Ttl(arg.msgs)..'\n'
..'💬¦ رسائلك •⊱ {'..arg.msgs..'} ⊰•\n'
..'🖲¦ نقاطك •⊱ {'..gamesveer..'} ⊰•\n➖')
local IdVeerSaied = IdVeerSaied:gsub("{الاسم}",arg.Namei)
local IdVeerSaied = IdVeerSaied:gsub("{المعرف}",UserNameVeer)
IdVeerSaied = IdVeerSaied:gsub("{الايدي}",arg.sender_user_id_)
IdVeerSaied = IdVeerSaied:gsub("{الرتبه}",arg.TheRank)
IdVeerSaied = IdVeerSaied:gsub("{التفاعل}",Get_Ttl(arg.msgs))
IdVeerSaied = IdVeerSaied:gsub("{الرسائل}",arg.msgs)
IdVeerSaied = IdVeerSaied:gsub("{الجهات}",NumGhaVeer)
IdVeerSaied = IdVeerSaied:gsub("{السحكات}",editedveer)
IdVeerSaied = IdVeerSaied:gsub("{النقاط}",gamesveer)
sendMsg(arg.chat_id_,arg.id_,IdVeerSaied)
end
end,{chat_id_=arg.chat_id_,id_=arg.id_,TheRank=arg.TheRank,sender_user_id_=data.id_,msgs=msgs,Namei=Namei,UserNameID=UserNameID,NumGhaVeer=NumGhaVeer,editedveer=editedveer})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,TheRank=msg.TheRank})
end
end

if msg.reply_id and not MsgText[2] then
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
GetUserID(UserID,function(arg,data)
if data.username_ then useri = '🎟¦ المعرف » [@'..data.username_..']\n' else useri = "" end
local namei = data.first_name_..' '..(data.last_name_ or "")
sendMsg(arg.ChatID,arg.MsgID,'🤵🏼¦ الاسم » ['..FlterName(namei,30)..']\n'
..'🎫¦ الايدي » {`'..arg.UserID..'`} \n'..useri
..'📮¦ الرتبه » '..Getrtba(arg.UserID,arg.ChatID)..'\n'
..'🕵🏻️‍♀️¦ نوع الكشف » بالرد\n➖')
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
local UserID = data.id_
UserName = Flter_Markdown(arg.UserName)
UserName = UserName:gsub([[\_]],"_")
sendMsg(arg.ChatID,arg.MsgID,'🤵🏼¦ الاسم » ['..FlterName(data.title_,30)..']\n'
..'🎫¦ الايدي » {`'..UserID..'`} \n'
..'🎟¦ المعرف » ['..UserName..']\n'
..'📮¦ الرتبه » '..Getrtba(UserID,arg.ChatID)..'\n'
..'🕵🏻️‍♀️¦ نوع الكشف » بالمعرف\n➖')
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
end 
return false
end


if MsgText[1] == "المجموعه" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
GetFullChat(msg.chat_id_,function(arg,data)
local GroupName = (redis:get(veer..'group:name'..arg.ChatID) or '')
redis:set(veer..'linkGroup'..arg.ChatID,(data.invite_link_ or ""))
sendMsg(arg.ChatID,arg.MsgID,
"ـ  •⊱ { مـعـلومـات الـمـجـموعـه } ⊰•\n\n"
.."*👥¦* عدد الاعـضـاء •⊱ { *"..data.member_count_.."* } ⊰•"
.."\n*📛¦* عدد المحظـوريـن •⊱ { *"..data.kicked_count_.."* } ⊰•"
.."\n*🗣¦* عدد الادمـنـيـه •⊱ { *"..data.administrator_count_.."* } ⊰•"
.."\n*🔚¦* الايــدي •⊱ { `"..arg.ChatID.."` } ⊰•"
.."\n\nـ •⊱ {  ["..FlterName(GroupName).."]("..(data.invite_link_ or "")..")  } ⊰•\n"
)
end,{ChatID=msg.chat_id_,MsgID=msg.id_}) 
return false
end

if MsgText[1] == "تثبيت" and msg.reply_id then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
local GroupID = msg.chat_id_:gsub('-100','')
if not msg.Director and redis:get(veer..'lock_pin'..msg.chat_id_) then
return "لا يمكنك التثبيت الامر مقفول من قبل الاداره"
else
tdcli_function({
ID="PinChannelMessage",
channel_id_ = GroupID,
message_id_ = msg.reply_id,
disable_notification_ = 1},
function(arg,data)
if data.ID == "Ok" then
redis:set(veer..":MsgIDPin:"..arg.ChatID,arg.reply_id)
sendMsg(arg.ChatID,arg.MsgID,"🙋🏼‍♂️*¦* أهلا عزيزي "..arg.TheRankCmd.." \n📌*¦* تم تثبيت الرساله \n✓")
elseif data.ID == "Error" and data.code_ == 6 then
sendMsg(arg.ChatID,arg.MsgID,'📛*¦* عذرا لا يمكنني التثبيت .\n🎟*¦* لست مشرف او لا املك صلاحيه التثبيت \n ❕')    
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_,reply_id=msg.reply_id,TheRankCmd=msg.TheRankCmd})
end
return false
end

if MsgText[1] == "الغاء التثبيت" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
if not msg.Director and redis:get(veer..'lock_pin'..msg.chat_id_) then return "لا يمكنك الغاء التثبيت الامر مقفول من قبل الاداره" end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100','')},function(arg,data) 
if data.ID == "Ok" then
sendMsg(arg.ChatID,arg.MsgID,"🙋🏼‍♂️*¦* أهلا عزيزي "..arg.TheRankCmd.."  \n💬*¦* تم الغاء تثبيت الرساله \n✓")    
elseif data.ID == "Error" and data.code_ == 6 then
sendMsg(arg.ChatID,arg.MsgID,'📛*¦* عذرا لا يمكنني الغاء التثبيت .\n🎟*¦* لست مشرف او لا املك صلاحيه التثبيت \n ❕')    
elseif data.ID == "Error" and data.code_ == 400 then
sendMsg(arg.ChatID,arg.MsgID,'📛*¦* عذرا عزيزي '..arg.TheRankCmd..' .\n🎟*¦* لا توجد رساله مثبته لاقوم بازالتها \n ❕')    
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_,TheRankCmd=msg.TheRankCmd})
return false
end

if MsgText[1] == "تقييد" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
if not MsgText[2] and msg.reply_id then  -- By Replay 
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then  return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكن تقييد البوت  \n📛") end
if UserID == our_id then   
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تقييد البوت\n🛠") 
elseif UserID == SUDO_ID then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تقييد المطور الاساسي\n🛠") 
elseif redis:sismember(veer..':SUDO_BOT:',UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تقييد المطور\n🛠") 
elseif redis:sismember(veer..':MONSHA_BOT:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تقييد المنشئ\n🛠") 
elseif redis:sismember(veer..'owners:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تقييد المدير\n🛠") 
elseif redis:sismember(veer..'admins:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تقييد الادمن\n🛠") 
end
GetChatMember(arg.ChatID,UserID,function(arg,data)
if data.status_.ID == "ChatMemberStatusMember" then
GetUserID(arg.UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME) 
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم تقييد آلعضـو بنجآح \n✓️',12,utf8.len(USERNAME)) 
end,{ChatID=arg.ChatID,UserID=arg.UserID,MsgID=arg.MsgID})
Restrict(arg.ChatID,arg.UserID,1)
elseif data.status_.ID == "ChatMemberStatusLeft" then
sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنني تقيد العضو لانه مغادر المجموعة \n🛠") 
else
sendMsg(arg.ChatIDarg.z,arg.MsgID,"👤*¦* لا يمكنني تقييد المشرف\n🛠") 
end
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then  -- By Username 
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
if data.type_.ID == "ChannelChatInfo" then return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* عذرا هذا معرف قناة وليس حساب \n📛") end
local UserID = data.id_
if UserID == our_id then   
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تقييد البوت\n🛠") 
elseif UserID == SUDO_ID then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تقييد المطور الاساسي\n🛠") 
elseif redis:sismember(veer..':SUDO_BOT:',UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تقييد المطور\n🛠") 
elseif redis:sismember(veer..':MONSHA_BOT:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تقييد المنشئ\n🛠") 
elseif redis:sismember(veer..'owners:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تقييد المدير\n🛠") 
elseif redis:sismember(veer..'admins:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تقييد الادمن\n🛠") 
end
GetChatMember(arg.ChatID,our_id,function(arg,data)
if data.status_.ID == "ChatMemberStatusEditor" then 
GetChatMember(arg.ChatID,arg.UserID,function(arg,data)
if data.status_.ID == "ChatMemberStatusMember" then 
Restrict(arg.ChatID,arg.UserID,1)  
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..arg.UserName..' \n🎫*¦* الايدي » {`'..arg.UserID..'`}\n🛠*¦* تم تقييد آلعضـو بنجآح \n✓️') 
else
sendMsg(arg.ChatID,arg.MsgID,'📛*¦* لا يمكنني تقييد العضو .\n🎟* لانه مشرف في المجموعه \n ❕')    
end
end,{ChatID=arg.ChatID,MsgID=arg.MsgID,UserName=arg.UserName,UserID=arg.UserID})
else
sendMsg(arg.ChatID,arg.MsgID,'📛*¦* لا يمكنني تقييد العضو .\n🎟* لانني لست مشرف في المجموعه \n ❕')    
end
end,{ChatID=arg.ChatID,MsgID=arg.MsgID,UserName=arg.UserName,UserID=UserID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]}) 
elseif MsgText[2] and MsgText[2]:match('^%d+$') then  -- By UserID
GetUserID(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد حساب بهذا الايدي  \n❕") end 
if data.username_ then 
UserName = '@'..data.username_
else 
UserName = FlterName(data.first_name_..' '..(data.last_name_ or ""),20) 
end
if data.id_ == our_id then  
return sendMsg(ChatID,MsgID,"📛*¦* لا يمكنك تقييد البوت \n❗️ ") 
end
GetChatMember(arg.ChatID,our_id,function(arg,data)
if data.status_.ID ~= "ChatMemberStatusEditor" then 
return sendMsg(arg.ChatID,arg.MsgID,'📛*¦* لا يمكنني تقييد العضو .\n🎟* لانني لست مشرف في المجموعه \n ❕')    
end
Restrict(arg.ChatID,arg.UserID,1)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..arg.UserName..' \n🎫*¦* الايدي » (`'..arg.UserID..'`)\n🛠*¦* تم تقييد آلعضـو بنجآح \n✓️') 
end,{ChatID=arg.ChatID,MsgID=arg.MsgID,UserName=UserName,UserID=data.id_})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
end 
return false
end

if MsgText[1] == "فك التقييد" or MsgText[1] == "فك تقييد" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
if not MsgText[2] and msg.reply_id then 
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تنفيذ الامر بالرد ع رسالة البوت \n📛") end
Restrict(arg.ChatID,UserID,2)
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME) 
return SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم فگ تقييد آلعضـو بنجآح \n✓️',12,utf8.len(USERNAME)) 
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_}) 
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then  -- BY Username
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
if data.type_.ID == "ChannelChatInfo" then return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* عذرا هذا معرف قناة وليس حساب \n📛") end
local UserID = data.id_
GetChatMember(arg.ChatID,our_id,function(arg,data)
if data.status_.ID ~= "ChatMemberStatusEditor" then 
return sendMsg(arg.ChatID,arg.MsgID,'📛*¦* لا يمكنني تقييد العضو .\n🎟* لانني لست مشرف في المجموعه \n ❕')    
end
Restrict(arg.ChatID,arg.UserID,2)  
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..arg.UserName..' \n🎫*¦* الايدي » {`'..arg.UserID..'`}\n🛠*¦* تم فك تقييد آلعضـو بنجآح \n✓️') 
end,{ChatID=arg.ChatID,MsgID=arg.MsgID,UserName=arg.UserName,UserID=UserID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})

elseif MsgText[2] and MsgText[2]:match('^%d+$') then 
GetUserID(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد حساب بهذا الايدي  \n❕") end 
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
if data.id_ == our_id then  
return sendMsg(ChatID,MsgID,"📛*¦* البوت ليس مقييد \n❗️ ") 
end
GetChatMember(arg.ChatID,our_id,function(arg,data)
if data.status_.ID ~= "ChatMemberStatusEditor" then 
return sendMsg(arg.ChatID,arg.MsgID,'📛*¦* لا يمكنني قك تقييد العضو .\n🎟* لانني لست مشرف في المجموعه \n ❕')    
end
Restrict(arg.ChatID,arg.UserID,2)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..arg.UserName..' \n🎫*¦* الايدي » (`'..arg.UserID..'`)\n🛠*¦* تم فك تقييد آلعضـو بنجآح \n✓️') 
end,{ChatID=arg.ChatID,MsgID=arg.MsgID,UserName=UserName,UserID=data.id_})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
end 
return false
end

if MsgText[1] == "رفع مميز" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
if not MsgText[2] and msg.reply_id then
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تنفيذ الامر بالرد ع رسالة البوت \n📛") end
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME) 
if redis:sismember(veer..'whitelist:'..arg.ChatID,arg.UserID) then 
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ انه بالتأكيد عضو مميز \n✓️',12,utf8.len(USERNAME))
else
redis:srem(veer..'is_silent_users:'..arg.ChatID,arg.UserID)
redis:srem(veer..'banned:'..arg.ChatID,arg.UserID)
redis:hset(veer..'username:'..arg.UserID,'username',USERNAME)
redis:sadd(veer..'whitelist:'..arg.ChatID,arg.UserID)
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تمت ترقيته ليصبح عضو مميز \n✓️',12,utf8.len(USERNAME))
end

end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then  --BY USERNAME
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
if data.type_.user_ and data.type_.user_.type_.ID == "UserTypeBot" then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لا يمكنني رفع حساب بوت \n❕") end 
local UserID = data.id_
if UserID == our_id then
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* عذرا لا يمكنني رفع البوت \n📛") 
elseif data.type_.ID == "ChannelChatInfo" then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* عذرا هذا معرف قناة وليس حساب \n📛") 
end
UserName = Flter_Markdown(arg.UserName)
if redis:sismember(veer..'whitelist:'..arg.ChatID,UserID) then 
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..'\n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* انه بالتأكيد من عضو مميز \n✓️') 
else
redis:srem(veer..'is_silent_users:'..arg.ChatID,UserID)
redis:srem(veer..'banned:'..arg.ChatID,UserID)
redis:hset(veer..'username:'..UserID,'username',UserName)
redis:sadd(veer..'whitelist:'..arg.ChatID,UserID)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تمت ترقيته ليصبح ضمن عضو مميز \n✓️')
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
elseif MsgText[2] and MsgText[2]:match('^%d+$') then
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="setwhitelist"})
end 
return false
end

if MsgText[1] == "تنزيل مميز" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
if not MsgText[2] and msg.reply_id then
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تنفيذ الامر بالرد ع رسالة البوت \n📛") end
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME) 
if not redis:sismember(veer..'whitelist:'..arg.ChatID,arg.UserID) then 
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ انه بالتأكيد ليس عضو مميز \n✓️',12,utf8.len(USERNAME)) 
else
redis:srem(veer..'whitelist:'..arg.ChatID,arg.UserID)
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تمت تنزيله من عضو مميز \n✓️',12,utf8.len(USERNAME)) 
end
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
local UserID = data.id_
UserName = Flter_Markdown(arg.UserName)
if not redis:sismember(veer..'whitelist:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..'\n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* انه بالتأكيد ليس من عضو مميز \n✓️') 
else
redis:srem(veer..'whitelist:'..arg.ChatID,UserID)
return sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تمت تنزيله من عضو مميز \n✓️')
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
elseif MsgText[2] and MsgText[2]:match('^%d+$') then
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="remwhitelist"})
end 
return false
end

if (MsgText[1] == "رفع المدير"  or MsgText[1] == "رفع مدير" ) then
if not msg.Creator then return "📛*¦* هذا الامر يخص {المطور,المنشئ} فقط  \n🚶" end
if not MsgText[2] and msg.reply_id then
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تنفيذ الامر بالرد ع رسالة البوت \n📛") end
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME) 
if redis:sismember(veer..'owners:'..arg.ChatID,arg.UserID) then 
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ انه بالتأكيد مدير \n✓️',12,utf8.len(USERNAME)) 
else
redis:srem(veer..'is_silent_users:'..arg.ChatID,arg.UserID)
redis:srem(veer..'banned:'..arg.ChatID,arg.UserID)
redis:srem(veer..'whitelist:'..arg.ChatID,arg.UserID)
redis:srem(veer..'admins:'..arg.ChatID,arg.UserID)
redis:srem(veer..'banned:'..arg.ChatID,arg.UserID)
redis:hset(veer..'username:'..arg.UserID,'username',USERNAME)
redis:sadd(veer..'owners:'..arg.ChatID,UserID)
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تمت ترقيته ليصبح مدير \n✓️',12,utf8.len(USERNAME)) 
end
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
if data.type_.user_ and data.type_.user_.type_.ID == "UserTypeBot" then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لا يمكنني رفع حساب بوت \n❕") end 
local UserID = data.id_
if UserID == our_id then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* عذرا لا يمكنني رفع البوت \n📛") 
elseif data.type_.ID == "ChannelChatInfo" then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* عذرا هذا معرف قناة وليس حساب \n📛") 
end
UserName = Flter_Markdown(arg.UserName)
if redis:sismember(veer..'owners:'..arg.ChatID,UserID) then 
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..'\n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* انه بالتأكيد مدير \n✓️') 
else
redis:hset(veer..'username:'..UserID, 'username',UserName)
redis:sadd(veer..'owners:'..arg.ChatID,UserID)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تمت ترقيته ليصبح مدير \n✓️')
end
redis:srem(veer..'is_silent_users:'..arg.ChatID,UserID)
redis:srem(veer..'banned:'..arg.ChatID,UserID)
redis:srem(veer..'whitelist:'..arg.ChatID,UserID)
redis:srem(veer..'admins:'..arg.ChatID,UserID)
redis:srem(veer..'banned:'..arg.ChatID,arg.UserID)
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
elseif MsgText[2] and MsgText[2]:match('^%d+$') then
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="setowner"})
end 
return false
end

if (MsgText[1] == "تنزيل المدير" or MsgText[1] == "تنزيل مدير" ) then
if not msg.Creator then return "📛*¦* هذا الامر يخص {المطور,المنشئ} فقط  \n🚶" end
if not MsgText[2] and msg.reply_id then
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تنفيذ الامر بالرد ع رسالة البوت \n📛") end
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME) 
if not redis:sismember(veer..'owners:'..arg.ChatID,arg.UserID) then 
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ انه بالتأكيد ليس مدير \n✓️',12,utf8.len(USERNAME)) 
else
redis:srem(veer..'is_silent_users:'..arg.ChatID,arg.UserID)
redis:srem(veer..'banned:'..arg.ChatID,arg.UserID)
redis:srem(veer..'whitelist:'..arg.ChatID,arg.UserID)
redis:srem(veer..'admins:'..arg.ChatID,arg.UserID)
redis:srem(veer..'banned:'..arg.ChatID,arg.UserID)
redis:srem(veer..'owners:'..arg.ChatID,arg.UserID)
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم تنزيله من المدير  \n✓️',12,utf8.len(USERNAME)) 
end

end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
local UserID = data.id_
UserName = Flter_Markdown(arg.UserName)
if not redis:sismember(veer..'owners:'..arg.ChatID,UserID) then 
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* انه بالتأكيد ليس مدير \n✓️') 
else
redis:srem(veer..'owners:'..arg.ChatID,UserID)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تم تنزيله من الاداره \n✓️')
end
redis:srem(veer..'is_silent_users:'..arg.ChatID,UserID)
redis:srem(veer..'banned:'..arg.ChatID,UserID)
redis:srem(veer..'whitelist:'..arg.ChatID,UserID)
redis:srem(veer..'admins:'..arg.ChatID,UserID)
redis:srem(veer..'banned:'..arg.ChatID,UserID)
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
elseif MsgText[2] and MsgText[2]:match('^%d+$') then
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="remowner"}) 
end 
return false
end

if (MsgText[1] == "رفع منشى" or MsgText[1] == "رفع منشئ") then
if not msg.Creator then return "📛*¦* هذا الامر يخص {المنشئ,المطور,المطور الاساسي} فقط  \n🚶" end
if not MsgText[2] and msg.reply_id then
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تنفيذ الامر بالرد ع رسالة البوت \n📛") end
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME) 
if redis:sismember(veer..':MONSHA_BOT:'..arg.ChatID,arg.UserID) then 
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ انه بالتأكيد منشىء  \n✓️',12,utf8.len(USERNAME)) 
else
redis:srem(veer..'is_silent_users:'..arg.ChatID,arg.UserID)
redis:srem(veer..'banned:'..arg.ChatID,arg.UserID)
redis:srem(veer..'whitelist:'..arg.ChatID,arg.UserID)
redis:srem(veer..'admins:'..arg.ChatID,arg.UserID)
redis:srem(veer..'banned:'..arg.ChatID,arg.UserID)
redis:srem(veer..'owners:'..arg.ChatID,arg.UserID)
redis:hset(veer..'username:'..arg.UserID,'username',USERNAME)
redis:sadd(veer..':MONSHA_BOT:'..arg.ChatID,arg.UserID)
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تمت ترقيته ليصبح منشىء في البوت \n✓️',12,utf8.len(USERNAME)) 
end
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
if data.type_.user_ and data.type_.user_.type_.ID == "UserTypeBot" then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لا يمكنني رفع حساب بوت \n❕") end 
local UserID = data.id_
if UserID == our_id then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* عذرا لا يمكنني رفع البوت \n📛") 
elseif data.type_.ID == "ChannelChatInfo" then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* عذرا هذا معرف قناة وليس حساب \n📛") 
end
UserName = Flter_Markdown(arg.UserName)
if redis:sismember(veer..':MONSHA_BOT:'..arg.ChatID,UserID) then 
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..'\n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* انه بالتأكيد منشىء في البوت \n✓️') 
else
redis:hset(veer..'username:'..UserID,'username',UserName)
redis:srem(veer..'is_silent_users:'..arg.ChatID,UserID)
redis:srem(veer..'banned:'..arg.ChatID,UserID)
redis:srem(veer..'whitelist:'..arg.ChatID,UserID)
redis:srem(veer..'admins:'..arg.ChatID,UserID)
redis:srem(veer..'banned:'..arg.ChatID,UserID)
redis:srem(veer..'owners:'..arg.ChatID,UserID)
redis:sadd(veer..':MONSHA_BOT:'..arg.ChatID,UserID)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تمت ترقيته ليصبح منشىء في البوت \n✓️')
end

end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
elseif MsgText[2] and MsgText[2]:match('^%d+$') then
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="setmnsha"})
end  
return false
end

if (MsgText[1] == "تنزيل منشى" or MsgText[1] == "تنزيل منشئ" ) then
if not msg.Creator then return "📛*¦* هذا الامر يخص {المنشئ,المطور,المطور الاساسي} فقط  \n🚶" end
if not MsgText[2] and msg.reply_id then
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
local MsgID = arg.MsgID
local ChatID = arg.ChatID
if not data.sender_user_id_ then return sendMsg(ChatID,MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تنفيذ الامر بالرد ع رسالة البوت \n📛") end
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME) 
if not redis:sismember(veer..':MONSHA_BOT:'..arg.ChatID,arg.UserID) then
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ انه بالتأكيد ليس منشىء \n✓️',12,utf8.len(USERNAME))
else
redis:srem(veer..'is_silent_users:'..arg.ChatID,arg.UserID)
redis:srem(veer..'banned:'..arg.ChatID,arg.UserID)
redis:srem(veer..'whitelist:'..arg.ChatID,arg.UserID)
redis:srem(veer..'admins:'..arg.ChatID,arg.UserID)
redis:srem(veer..'banned:'..arg.ChatID,arg.UserID)
redis:srem(veer..'owners:'..arg.ChatID,arg.UserID)
redis:srem(veer..':MONSHA_BOT:'..arg.ChatID,arg.UserID)
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم تنزيله من المنشىء \n✓️',12,utf8.len(USERNAME)) 
end
end,{ChatID=ChatID,UserID=UserID,MsgID=MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
local UserID = data.id_
UserName = Flter_Markdown(arg.UserName)
if not redis:sismember(veer..':MONSHA_BOT:'..arg.ChatID,UserID) then 
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..'\n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* انه بالتأكيد ليس منشىء \n✓️') 
else
redis:srem(veer..'is_silent_users:'..arg.ChatID,UserID)
redis:srem(veer..'banned:'..arg.ChatID,UserID)
redis:srem(veer..'whitelist:'..arg.ChatID,UserID)
redis:srem(veer..'admins:'..arg.ChatID,UserID)
redis:srem(veer..'banned:'..arg.ChatID,UserID)
redis:srem(veer..'owners:'..arg.ChatID,UserID)
redis:srem(veer..':MONSHA_BOT:'..arg.ChatID,UserID)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تمت تنزيله من المنشىء \n✓️') 
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
elseif MsgText[2] and MsgText[2]:match('^%d+$') then
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="remmnsha"})
end 
return false
end

if MsgText[1] == "رفع ادمن" then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
if not MsgText[2] and msg.reply_id then
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تنفيذ الامر بالرد ع رسالة البوت \n📛") end
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME) 
if redis:sismember(veer..'admins:'..arg.ChatID,arg.UserID) then 
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ انه بالتأكيد ادمن \n✓️',12,utf8.len(USERNAME)) 
else
redis:srem(veer..'is_silent_users:'..arg.ChatID,arg.UserID)
redis:srem(veer..'banned:'..arg.ChatID,arg.UserID)
redis:srem(veer..'whitelist:'..arg.ChatID,arg.UserID)
redis:srem(veer..'admins:'..arg.ChatID,arg.UserID)
redis:srem(veer..'banned:'..arg.ChatID,arg.UserID)
redis:hset(veer..'username:'..arg.UserID,'username',USERNAME)
redis:sadd(veer..'admins:'..arg.ChatID,arg.UserID)
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تمت ترقيته ليصبح ادمن \n✓️',12,utf8.len(USERNAME)) 
end
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
if data.type_.user_ and data.type_.user_.type_.ID == "UserTypeBot" then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لا يمكنني رفع حساب بوت \n❕") end 
local UserID = data.id_
if UserID == our_id then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* عذرا لا يمكنني رفع البوت \n📛") 
elseif data.type_.ID == "ChannelChatInfo" then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* عذرا هذا معرف قناة وليس حساب \n📛") 
end
UserName = Flter_Markdown(arg.UserName)
if redis:sismember(veer..'admins:'..arg.ChatID,UserID) then 
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* انه بالتأكيد ادمن \n✓️') 
else
redis:srem(veer..'is_silent_users:'..arg.ChatID,UserID)
redis:srem(veer..'banned:'..arg.ChatID,UserID)
redis:srem(veer..'whitelist:'..arg.ChatID,UserID)
redis:srem(veer..'admins:'..arg.ChatID,UserID)
redis:srem(veer..'banned:'..arg.ChatID,UserID)
redis:hset(veer..'username:'..UserID,'username',UserName)
redis:sadd(veer..'admins:'..arg.ChatID,UserID)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تمت ترقيته ليصبح ادمن \n✓️')
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
elseif MsgText[2] and MsgText[2]:match('^%d+$') then
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="promote"})
end 
return false
end

if MsgText[1] == "تنزيل ادمن" then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
if not MsgText[2] and msg.reply_id then
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تنفيذ الامر بالرد ع رسالة البوت \n📛") end
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME) 
if not redis:sismember(veer..'admins:'..arg.ChatID,arg.UserID) then 
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ انه بالتأكيد ليس ادمن \n✓️',12,utf8.len(USERNAME)) 
else
redis:srem(veer..'is_silent_users:'..arg.ChatID,arg.UserID)
redis:srem(veer..'whitelist:'..arg.ChatID,arg.UserID)
redis:srem(veer..'admins:'..arg.ChatID,arg.UserID)
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم تنزيله من الادمنيه \n✓️',12,utf8.len(USERNAME)) 
end
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
local UserID = data.id_
UserName = Flter_Markdown(arg.UserName)
if not redis:sismember(veer..'admins:'..arg.ChatID,UserID) then 
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* انه بالتأكيد ليس ادمن \n✓️') 
else
redis:srem(veer..'admins:'..arg.ChatID,UserID)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تم تنزيله من الادمنيه \n✓️')
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
elseif MsgText[2] and MsgText[2]:match('^%d+$') then
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="demote"})
end 
return false
end

if MsgText[1] == "التفاعل" then
if not MsgText[2] and msg.reply_id then
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
GetUserID(UserID,function(arg,data)
local USERNAME = ResolveUserName(data)
local maseegs = redis:get(veer..'msgs:'..arg.UserID..':'..arg.ChatID) or 1
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME) 
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n📮¦ رسائلك » {'..maseegs..'} رسالةة\n🔖¦ التفاعل »  '..Get_Ttl(maseegs)..' \n🙇🏽',12,utf8.len(USERNAME)) 
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
local UserID = data.id_
local maseegs = redis:get(veer..'msgs:'..UserID..':'..ChatID) or 1
local namei = FlterName(data.title_)
USERCAR = utf8.len(namei)
SendMention(arg.ChatID,UserID,arg.MsgID,'👤¦ العضو » '..namei..' \n📮¦ رسائلك » {'..maseegs..'} رسالةة\n🔖¦ التفاعل »  '..Get_Ttl(maseegs)..' \n🙇🏽',12,utf8.len(USERNAME))
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
end  
return false
end

if MsgText[1] == "كشف" then
if MsgText[2] and MsgText[2]:match('-%d+') then
if not msg.Creator then return "📛*¦*هذا الامر يخص {المطور,المنشئ} فقط  \n🚶‍♂️" end
local VeerChatIdG = MsgText[2]
GetFullChat(VeerChatIdG,function(arg,data)
if not data.member_count_ then return sendMsg(msg.chat_id_,arg.MsgID,"📛¦ فشل التحقق من المجموعة\n❕") end
local GroupName = (redis:get(veer..'group:name'..arg.ChatID) or '')
local LinkGbVeer = data.invite_link_
if not LinkGbVeer then
local LinkGbVeer = ExportLink(VeerChatIdG)
if LinkGbVeer then
LinkGbVeer = LinkGbVeer.result
end
end
sendMsg(msg.chat_id_,arg.MsgID,
"ـ  •⊱ { مـعـلومـات الـمـجـموعـه } ⊰•\n\n"
.."*👥¦* عدد الاعـضـاء •⊱ { *"..data.member_count_.."* } ⊰•"
.."\n*📛¦* عدد المحظـوريـن •⊱ { *"..data.kicked_count_.."* } ⊰•"
.."\n*🗣¦* عدد الادمـنـيـه •⊱ { *"..data.administrator_count_.."* } ⊰•"
.."\n*🔚¦* الايــدي •⊱ { `"..arg.ChatID.."` } ⊰•"
.."\n\nـ •⊱ {  ["..FlterName(GroupName).."]("..(LinkGbVeer or "")..")  } ⊰•\n"
)
end,{ChatID=VeerChatIdG,MsgID=msg.id_}) 
return false
end
end

if MsgText[1] == "كشف" then
if not MsgText[2] and msg.reply_id then 
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME)
local namei = data.first_name_..' '..(data.last_name_ or "")
if data.username_ then useri = '@'..data.username_ else useri = " لا يوجد " end
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'🤵🏼¦ الاسم » '..namei..'\n'
..'🎫¦ الايدي » {'..arg.UserID..'} \n'
..'🎟¦ المعرف » '..useri..'\n'
..'📮¦ الرتبه » '..Getrtba(arg.UserID,arg.ChatID)..'\n'
..'🕵🏻️‍♀️¦ نوع الكشف » بالرد\n➖',13,utf8.len(namei))
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
local UserID = data.id_
UserName = Flter_Markdown(arg.UserName)
sendMsg(arg.ChatID,arg.MsgID,'ـ🤵🏼*¦* الاسم » '..FlterName(data.title_,30)..'\n'..'🎫*¦* الايدي » {`'..UserID..'`} \n'..'🎟*¦* المعرف » '..UserName..'\n'..'🕵🏻️‍♀️*¦* نوع الكشف » بالمعرف\n'..'➖')
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
elseif MsgText[2] and MsgText[2]:match('^%d+$') then
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="whois"}) 
end
return false
end


if MsgText[1] == "طرد" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
if not MsgText[2] and msg.reply_id then 
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then   
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك طرد البوت\n🛠") 
elseif UserID == SUDO_ID then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك طرد المطور الاساسي\n🛠") 
elseif redis:sismember(veer..':SUDO_BOT:',UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك طرد المطور\n🛠") 
elseif redis:sismember(veer..':MONSHA_BOT:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك طرد المنشئ\n🛠") 
elseif redis:sismember(veer..'owners:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك طرد المدير\n🛠") 
elseif redis:sismember(veer..'admins:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك طرد الادمن\n🛠") 
end
kick_user(UserID,arg.ChatID,function(arg,data)
if data.ID == "Error" and data.code_ == 400 then
return sendMsg(arg.ChatID,arg.MsgID,'📛*¦* لا يمكنني حظر العضو .\n🎟*¦* لانه مشرف في المجموعه \n ❕')    
elseif data.ID == "Error" and data.code_ == 3 then
return sendMsg(arg.ChatID,arg.MsgID,'📛*¦* لا يمكنني حظر العضو .\n🎟*¦* ليس لدي صلاحيه الحظر او لست مشرف\n ❕')    
end
GetUserID(arg.UserID,function(arg,data)
USERNAME = ResolveUserName(data)
redis:hset(veer..'username:'..arg.UserID,'username',USERNAME)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME) 
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم طرد العضو \n✓️',12,utf8.len(USERNAME))
redis:sadd(veer..'banned:'..arg.ChatID,arg.UserID)
StatusLeft(arg.ChatID,arg.UserID)
end,{ChatID=arg.ChatID,UserID=arg.UserID,MsgID=arg.MsgID})
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then 
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
local UserID = data.id_
UserName = Flter_Markdown(arg.UserName)

if UserID == our_id then   
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك طرد البوت\n🛠") 
elseif UserID == SUDO_ID then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك طرد المطور الاساسي\n🛠") 
elseif redis:sismember(veer..':SUDO_BOT:',UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك طرد المطور\n🛠") 
elseif redis:sismember(veer..':MONSHA_BOT:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك طرد المنشئ\n🛠") 
elseif redis:sismember(veer..'owners:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك طرد المدير\n🛠") 
elseif redis:sismember(veer..'admins:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك طرد الادمن\n🛠") 
end
kick_user(UserID,arg.ChatID,function(arg,data)
if data.ID == "Error" and data.code_ == 400 then
return sendMsg(arg.ChatID,arg.MsgID,'📛*¦* لا يمكنني طرد العضو .\n🎟*¦* لانه مشرف في المجموعه \n ❕')    
elseif data.ID == "Error" and data.code_ == 3 then
return sendMsg(arg.ChatID,arg.MsgID,'📛*¦* لا يمكنني طرد العضو .\n🎟*¦* ليس لدي صلاحيه الحظر او لست مشرف\n ❕')    
end
redis:hset(veer..'username:'..arg.UserID,'username',arg.UserName)
redis:sadd(veer..'banned:'..arg.ChatID,arg.UserID)
StatusLeft(arg.ChatID,arg.UserID)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..arg.UserName..' \n🎫*¦* الايدي » (`'..arg.UserID..'`)\n🛠*¦* تم طرد العضو \n✓️')
end,{ChatID=arg.ChatID,MsgID=arg.MsgID,UserName=UserName,UserID=UserID})

end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
elseif MsgText[2] and MsgText[2]:match('^%d+$') then
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="kick"}) 
end 
return false
end


if MsgText[1] == "حظر" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
if not MsgText[2] and msg.reply_id then 
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_

if UserID == our_id then   
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر البوت\n🛠") 
elseif UserID == SUDO_ID then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر المطور الاساسي\n🛠") 
elseif redis:sismember(veer..':SUDO_BOT:',UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر المطور\n🛠") 
elseif redis:sismember(veer..':MONSHA_BOT:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر المنشئ\n🛠") 
elseif redis:sismember(veer..'owners:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر المدير\n🛠") 
elseif redis:sismember(veer..'admins:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر الادمن\n🛠") 
end

kick_user(UserID,arg.ChatID,function(arg,data)
if data.ID == "Error" and data.code_ == 400 then
return sendMsg(arg.ChatID,arg.MsgID,'📛*¦* لا يمكنني حظر العضو .\n🎟*¦* لانه مشرف في المجموعه \n ❕')    
elseif data.ID == "Error" and data.code_ == 3 then
return sendMsg(arg.ChatID,arg.MsgID,'📛*¦* لا يمكنني حظر العضو .\n🎟*¦* ليس لدي صلاحيه الحظر او لست مشرف\n ❕')    
else
GetUserID(arg.UserID,function(arg,data)
USERNAME = ResolveUserName(data)
redis:hset(veer..'username:'..arg.UserID,'username',USERNAME)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME) 
redis:sadd(veer..'banned:'..arg.ChatID,arg.UserID)
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم حظره  \n✓️',12,utf8.len(USERNAME)) 
end,{ChatID=arg.ChatID,UserID=arg.UserID,MsgID=arg.MsgID})
end
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then 
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
local UserID = data.id_
UserName = Flter_Markdown(arg.UserName)

if UserID == our_id then   
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر البوت\n🛠") 
elseif UserID == SUDO_ID then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر المطور الاساسي\n🛠") 
elseif redis:sismember(veer..':SUDO_BOT:',UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر المطور\n🛠") 
elseif redis:sismember(veer..':MONSHA_BOT:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر المنشئ\n🛠") 
elseif redis:sismember(veer..'owners:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر المدير\n🛠") 
elseif redis:sismember(veer..'admins:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر الادمن\n🛠") 
end
if data.type_.ID == "ChannelChatInfo" then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* عذرا هذا معرف قناة وليس حساب \n📛") 
end
if redis:sismember(veer..'banned:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تم بالتأكيد حظره \n✓️') 
end
kick_user(UserID,arg.ChatID,function(arg,data)
if data.ID == "Error" and data.code_ == 400 then
return sendMsg(arg.ChatID,arg.MsgID,'📛*¦* لا يمكنني حظر العضو .\n🎟*¦* لانه مشرف في المجموعه \n ❕')    
elseif data.ID == "Error" and data.code_ == 3 then
return sendMsg(arg.ChatID,arg.MsgID,'📛*¦* لا يمكنني حظر العضو .\n🎟*¦* ليس لدي صلاحيه الحظر او لست مشرف\n ❕')    
end
redis:hset(veer..'username:'..arg.UserID, 'username',arg.UserName)
redis:sadd(veer..'banned:'..arg.ChatID,arg.UserID)
return sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..arg.UserName..' \n🎫*¦* الايدي » (`'..arg.UserID..'`)\n🛠*¦* تم حظره \n✓️')
end,{ChatID=arg.ChatID,MsgID=arg.MsgID,UserName=UserName,UserID=UserID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
elseif MsgText[2] and MsgText[2]:match('^%d+$') then 
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="ban"}) 
end 
return false
end


if (MsgText[1] == "الغاء الحظر" or MsgText[1] == "الغاء حظر") and msg.Admin then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
if not MsgText[2] and msg.reply_id then 
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لا يمكنك استخدام الامر بالرد على البوت \n❕") end
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME)
GetChatMember(arg.ChatID,arg.UserID,function(arg,data)
if (data.status_.ID == "ChatMemberStatusKicked" or redis:sismember(veer..'banned:'..arg.ChatID,arg.UserID)) then
StatusLeft(arg.ChatID,arg.UserID,function(arg,data) 
if data.message_ and data.message_ == "CHAT_ADMIN_REQUIRED" then 
sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا البوت ليس لديه صلاحيات الحظر \n❕")
else
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..arg.USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم الغاء حظره \n✓️',12,arg.USERCAR) 
end
end,{ChatID=arg.ChatID,UserID=arg.UserID,MsgID=arg.MsgID,USERNAME=arg.USERNAME,USERCAR=arg.USERCAR})
redis:srem(veer..'banned:'..arg.ChatID,arg.UserID)
else
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..arg.USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ العضو ليس محظور  \n✓️',12,arg.USERCAR) 
end
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID,USERNAME=USERNAME,USERCAR=USERCAR})
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then 
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
if data.id_ == our_id then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لا يمكنك تنفيذ الامر مع البوت \n❕") end 
local UserID = data.id_
UserName = Flter_Markdown(arg.UserName)
if not redis:sismember(veer..'banned:'..arg.ChatID,UserID) then 
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تم بالتأكيد الغاء حظره \n✓️') 
else
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تم الغاء حظره \n✓️')
end
redis:srem(veer..'banned:'..arg.ChatID,UserID)
StatusLeft(arg.ChatID,UserID)
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
elseif MsgText[2] and MsgText[2]:match('^%d+$') then 
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="uban"}) 
end 
return false
end

if MsgText[1] == "كتم" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
if not MsgText[2] and msg.reply_id then 
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then   
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك كتم البوت\n🛠") 
elseif UserID == SUDO_ID then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك كتم المطور الاساسي\n🛠") 
elseif redis:sismember(veer..':SUDO_BOT:',UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك كتم المطور\n🛠") 
elseif redis:sismember(veer..':MONSHA_BOT:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك كتم المنشئ\n🛠") 
elseif redis:sismember(veer..'owners:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك كتم المدير\n🛠") 
elseif redis:sismember(veer..'admins:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك كتم الادمن\n🛠") 
end
--[[
  ▄█    █▄     ▄████████    ▄████████    ▄████████  Channel : @VeerCli 
 ███    ███   ███    ███   ███    ███   ███    ███ 
 ███    ███   ███    █▀    ███    █▀    ███    ███ 
 ███    ███  ▄███▄▄▄      ▄███▄▄▄      ▄███▄▄▄▄██▀  Bot : @VeerCliBot
 ███    ███ ▀▀███▀▀▀     ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   
 ███    ███   ███    █▄    ███    █▄  ▀███████████ Dev : @RSAIED and @YYBYY
 ███    ███   ███    ███   ███    ███   ███    ███ 
  ▀██████▀    ██████████   ██████████   ███    ███  By Source Veer
                                        ███    ███ 
#------------------------------------------------------
]]
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME)
if redis:sismember(veer..'is_silent_users:'..arg.ChatID,arg.UserID) then 
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم بالتأكيد كتمه  \n✓️',12,utf8.len(USERNAME)) 
else
redis:hset(veer..'username:'..arg.UserID,'username',USERNAME)
redis:sadd(veer..'is_silent_users:'..arg.ChatID,arg.UserID)
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم كتمه \n✓️',12,utf8.len(USERNAME)) 
end
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then 
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
local UserID = data.id_
UserName = Flter_Markdown(arg.UserName)
if UserID == our_id then   
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك كتم البوت\n🛠") 
elseif UserID == SUDO_ID then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك كتم المطور الاساسي\n🛠") 
elseif redis:sismember(veer..':SUDO_BOT:',UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك كتم المطور\n🛠") 
elseif redis:sismember(veer..':MONSHA_BOT:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك كتم المنشئ\n🛠") 
elseif redis:sismember(veer..'owners:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك كتم المدير\n🛠") 
elseif redis:sismember(veer..'admins:'..arg.ChatID,UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك كتم الادمن\n🛠") 
end
if redis:sismember(veer..'is_silent_users:'..arg.ChatID,UserID) then 
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تم بالتأكيد كتمه \n✓️') 
else
redis:hset(veer..'username:'..UserID,'username',UserName)
redis:sadd(veer..'is_silent_users:'..arg.ChatID,UserID)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تم كتمه \n✓️')
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
elseif MsgText[2] and MsgText[2]:match('^%d+$') then 
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="ktm"}) 
end
return false
end


if MsgText[1] == "الغاء الكتم" or MsgText[1] == "الغاء كتم" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
if not MsgText[2] and msg.reply_id then 
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME)
if not redis:sismember(veer..'is_silent_users:'..arg.ChatID,arg.UserID) then 
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم بالتاكيد الغاء كتمه  \n✓️',12,utf8.len(USERNAME)) 
else
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم الغاء كتمه  \n✓️',12,utf8.len(USERNAME)) 
redis:srem(veer..'is_silent_users:'..arg.ChatID,arg.UserID)
end
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
elseif MsgText[2] and MsgText[2]:match('@[%a%d_]+') then 
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
local UserID = data.id_
UserName = Flter_Markdown(arg.UserName)
if not redis:sismember(veer..'is_silent_users:'..arg.ChatID,UserID) then 
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تم بالتأكيد الغاء كتمه \n✓️') 
else
redis:srem(veer..'is_silent_users:'..arg.ChatID,UserID)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تم الغاء كتمه \n✓️')
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
elseif MsgText[2] and MsgText[2]:match('^%d+$') then 
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="unktm"}) 
end 
return false
end

if MsgText[1] == "تنزيل الكل" then
if not msg.Creator then return "📛*¦*هذا الامر يخص {المطور,المنشئ} فقط  \n🚶‍♂️" end
if not msg.reply_id then
local Admins = redis:scard(veer..'admins:'..msg.chat_id_)
redis:del(veer..'admins:'..msg.chat_id_)
local NumMDER = redis:scard(veer..'owners:'..msg.chat_id_)
redis:del(veer..'owners:'..msg.chat_id_)
local MMEZEN = redis:scard(veer..'whitelist:'..msg.chat_id_)
redis:del(veer..'whitelist:'..msg.chat_id_)
if Admins == 0 and NumMDER == 0 and MMEZEN == 0 then
return "🙋🏼‍♂️¦ أهلا عزيزي "..msg.TheRankCmd.." ⇓\n👥¦ لا يوجد اعضاء تملك رتب { مدير,ادمن,مميز }\n🚶‍♂️" end
return "🙋🏼‍♂️¦ أهلا عزيزي "..msg.TheRankCmd.." ⇓\n👤¦ تــم تنزيل  ❴ "..Admins.." ❵ من الادمنيه\n👤¦ تــم تنزيل  ❴ "..NumMDER.." ❵ من المدراء\n👤¦ تــم تنزيل  ❴ "..MMEZEN.." ❵ من المميزين\n\n👥¦ تم تنزيلهم من جميع الرتب\n🚶‍♂️" 
else
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك تنفيذ الامر بالرد ع رسالة البوت \n📛") end
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME) 
if not redis:sismember(veer..'owners:'..arg.ChatID,arg.UserID) and not redis:sismember(veer..'admins:'..arg.ChatID,arg.UserID) and not redis:sismember(veer..'whitelist:'..arg.ChatID,arg.UserID) then
return sendMsg(arg.ChatID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ ليس لديه رتبه {مدير,ادمن,مميز} ليتم تنزيله منها\n✓️')
end
if redis:sismember(veer..'owners:'..arg.ChatID,arg.UserID) then
redis:srem(veer..'owners:'..arg.ChatID,arg.UserID) 
Reowner = 'مدير,'
else
Reowner = ''
end
if redis:sismember(veer..'admins:'..arg.ChatID,arg.UserID) then 
redis:srem(veer..'admins:'..arg.ChatID,arg.UserID)
Readmin = 'ادمن,'
else
Readmin = ''
end
if redis:sismember(veer..'whitelist:'..arg.ChatID,arg.UserID) then
redis:srem(veer..'whitelist:'..arg.ChatID,arg.UserID)
Rewhitelist = 'مميز'
else
Rewhitelist = ''
end
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم تنزيله من الرتب التالية ⇊\n{ '..Reowner..Readmin..Rewhitelist..' }\n✓️',12,utf8.len(USERNAME))
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
end
end

--{ Commands For locks }

if MsgText[1] == "قفل" then

if MsgText[2] == "الكل"		 then return lock_All(msg) end
if MsgText[2] == "الوسائط" 	 then return lock_Media(msg) end
if MsgText[2] == "الصور بالتقييد" 	 then return tqeed_photo(msg) end
if MsgText[2] == "الفيديو بالتقييد"  then return tqeed_video(msg) end
if MsgText[2] == "المتحركه بالتقييد" then return tqeed_gif(msg) end
if MsgText[2] == "التوجيه بالتقييد"  then return tqeed_fwd(msg) end
if MsgText[2] == "الروابط بالتقييد"  then return tqeed_link(msg) end
if MsgText[2] == "الدردشه"    	     then return mute_text(msg) end
if MsgText[2] == "المتحركه" 		 then return mute_gif(msg) end
if MsgText[2] == "الصور" 			 then return mute_photo(msg) end
if MsgText[2] == "الفيديو"			 then return mute_video(msg) end
if MsgText[2] == "البصمات" 		then return mute_voice(msg) 	end
if MsgText[2] == "الصوت" 		then return mute_audio(msg) 	end
if MsgText[2] == "الملصقات" 	then return mute_sticker(msg) end
if MsgText[2] == "الجهات" 		then return mute_contact(msg) end
if MsgText[2] == "التوجيه" 		then return mute_forward(msg) end
if MsgText[2] == "الموقع"	 	then return mute_location(msg) end
if MsgText[2] == "الملفات" 		then return mute_document(msg) end
if MsgText[2] == "الاشعارات" 	then return mute_tgservice(msg) end
if MsgText[2] == "الانلاين" 		then return mute_inline(msg) end
if MsgText[2] == "الالعاب" 		then return mute_game(msg) end
if MsgText[2] == "الكيبورد" 	then return mute_keyboard(msg) end
if MsgText[2] == "الروابط" 		then return lock_link(msg) end
if MsgText[2] == "التاك" 		then return lock_tag(msg) end
if MsgText[2] == "المعرفات" 	then return lock_username(msg) end
if MsgText[2] == "التعديل" 		then return lock_edit(msg) end
if MsgText[2] == "الكلايش" 		then return lock_spam(msg) end
if MsgText[2] == "التكرار" 		then return lock_flood(msg) end
if MsgText[2] == "البوتات" 		then return lock_bots(msg) end
if MsgText[2] == "البوتات بالطرد" 	then return lock_bots_by_kick(msg) end
if MsgText[2] == "الماركدوان" 	then return lock_markdown(msg) end
if MsgText[2] == "الويب" 		then return lock_webpage(msg) end 
if MsgText[2] == "التثبيت" 		then return lock_pin(msg) end 
if MsgText[2] == "الدخول" 		then return Adduser(msg) end 
end

--{ Commands For Unlocks }
if MsgText[1] == "فتح" 		then 
if MsgText[2] == "الكل" then return Unlock_All(msg) end
if MsgText[2] == "الوسائط" then return Unlock_Media(msg) end
if MsgText[2] == "الصور بالتقييد" 		then return fktqeed_photo(msg) 	end
if MsgText[2] == "الفيديو بالتقييد" 	then return fktqeed_video(msg) 	end
if MsgText[2] == "المتحركه بالتقييد" 	then return fktqeed_gif(msg) 	end
if MsgText[2] == "التوجيه بالتقييد" 	then return fktqeed_fwd(msg) 	end
if MsgText[2] == "الروابط بالتقييد" 	then return fktqeed_link(msg) 	end
if MsgText[2] == "المتحركه" 	then return unmute_gif(msg) 	end
if MsgText[2] == "الدردشه" 		then return unmute_text(msg) 	end
if MsgText[2] == "الصور" 		then return unmute_photo(msg) 	end
if MsgText[2] == "الفيديو" 		then return unmute_video(msg) 	end
if MsgText[2] == "البصمات" 		then return unmute_voice(msg) 	end
if MsgText[2] == "الصوت" 		then return unmute_audio(msg) 	end
if MsgText[2] == "الملصقات" 	then return unmute_sticker(msg) end
if MsgText[2] == "الجهات" 		then return unmute_contact(msg) end
if MsgText[2] == "التوجيه" 		then return unmute_forward(msg) end
if MsgText[2] == "الموقع" 		then return unmute_location(msg) end
if MsgText[2] == "الملفات" 		then return unmute_document(msg) end
if MsgText[2] == "الاشعارات" 	then return unmute_tgservice(msg) end
if MsgText[2] == "الانلاين" 		then return unmute_inline(msg) 	end
if MsgText[2] == "الالعاب" 		then return unmute_game(msg) 	end
if MsgText[2] == "الكيبورد" 	then return unmute_keyboard(msg) end
if MsgText[2] == "الروابط" 		then return unlock_link(msg) 	end
if MsgText[2] == "التاك" 		then return unlock_tag(msg) 	end
if MsgText[2] == "المعرفات" 	then return unlock_username(msg) end
if MsgText[2] == "التعديل" 		then return unlock_edit(msg) 	end
if MsgText[2] == "الكلايش" 		then return unlock_spam(msg) 	end
if MsgText[2] == "التكرار" 		then return unlock_flood(msg) 	end
if MsgText[2] == "البوتات" 		then return unlock_bots(msg) 	end
if MsgText[2] == "البوتات بالطرد" 	then return unlock_bots_by_kick(msg) end
if MsgText[2] == "الماركدوان" 	then return unlock_markdown(msg) end
if MsgText[2] == "الويب" 		then return unlock_webpage(msg) 	end
if MsgText[2] == "التثبيت" 		then return unlock_pin(msg) end 
if MsgText[2] == "الدخول" 		then return unAdduser(msg) end 
end
 
if MsgText[1] == "انشاء رابط" then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
if not redis:get(veer..'ExCmdLink'..msg.chat_id_) then
local LinkGp = ExportLink(msg.chat_id_)
if LinkGp then
LinkGp = LinkGp.result
redis:set(veer..'linkGroup'..msg.chat_id_,LinkGp)
redis:setex(veer..'ExCmdLink'..msg.chat_id_,120,true)
return sendMsg(msg.chat_id_,msg.id_,"🙋🏼‍♂️*¦* تم انشاء رابط جديد \n🔖¦ ["..LinkGp.."]\n🔖¦ لعرض الرابط ارسل { الرابط } \n")
else
return sendMsg(msg.chat_id_,msg.id_,"📛¦ لا يمكنني انشاء رابط للمجموعه .\n🎟¦ لانني لست مشرف في المجموعه \n ❕")
end
else
return sendMsg(msg.chat_id_,msg.id_,"📛¦ لقد قمت بانشاء الرابط سابقا .\n🎟¦ ارسل { الرابط } لرؤيه الرابط  \n ❕")
end
return false
end 

if MsgText[1] == "تاك للكل" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = 200
},function(ver,veer)
local t = "\n👥¦ قائمة الاعضاء \n━━━━━━━━━━━━━\n"
x = 0
local list = veer.members_
for k, v in pairs(list) do
x = x + 1
t = t..""..x.." - {["..v.user_id_.."](tg://user?id="..v.user_id_..")} \n"
end
send_msg(msg.chat_id_,t,msg.id_)
end,nil)
end

if Text:match("^كلهم (.*)$") then
if utf8.len(Text:match("^كلهم (.*)$")) > 50 then 
return "📛| ما اكدر اكلهم اكثر من 50 حرف 🙌🏾"
end
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = 200
},function(ver,veer)
local Veer_Text = Text:match("^كلهم (.*)$"),50
local t = "\n🗣¦ "..Veer_Text.."\n━━━━━━━━━━━━━\n"
x = 0
local list = veer.members_
for k, v in pairs(list) do
x = x + 1
t = t..""..x.." - {["..v.user_id_.."](tg://user?id="..v.user_id_..")} \n"
end
send_msg(msg.chat_id_,t,msg.id_)
end,nil)
end

if MsgText[1] == "الرابط" then
if not redis:get(veer..'linkGroup'..msg.chat_id_) then 
return "📡*¦* اوه 🙀 لا يوجد رابط ☹️\n🔖*¦*لانشاء رابط ارسل { انشاء رابط } \n📡" 
end
local GroupName = redis:get(veer..'group:name'..msg.chat_id_)
local GroupLink = redis:get(veer..'linkGroup'..msg.chat_id_)
return "🔖¦رابـط الـمـجـمـوعه 💯\n🌿¦ "..Flter_Markdown(GroupName).." :\n\n["..GroupLink.."]\n"
end

if MsgText[1] == "وضع رابط" then
if not msg.Director then return "📛*¦*هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
redis:setex(veer..'linkGroup'..msg.sender_user_id_,300,true)
return '📭¦ حسننا عزيزي  ✋🏿\n🗯¦ الان ارسل الرابط الجديد 🍃'
end

if MsgText[1] == "ضع القوانين" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
redis:setex(veer..'rulse:witting'..msg.sender_user_id_,300,true)
return '📭¦ حسننا عزيزي  ✋🏿\n🗯¦ الان ارسل القوانين  للمجموعه 🍃'
end

if MsgText[1] == "القوانين" then
if not redis:get(veer..'rulse:msg'..msg.chat_id_) then 
return "📡*¦* مرحبأ عزيري 👋🏻 القوانين كلاتي 👇🏻\n🔖¦ ممنوع نشر الروابط \n🔖¦ ممنوع التكلم او نشر صور اباحيه \n🔖¦ ممنوع  اعاده توجيه\n🔖¦ ممنوع التكلم بلطائفه \n🔖¦ الرجاء احترام المدراء والادمنيه 😅\n"
else 
return "*🔖¦القوانين :*\n"..redis:get(veer..'rulse:msg'..msg.chat_id_) 
end 
end

if MsgText[1] == "ضع تكرار" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
local NumLoop = tonumber(MsgText[2])
if NumLoop < 1 or NumLoop > 50 then 
return "📡*¦* حدود التكرار ,  يجب ان تكون ما بين  *[2-50]*" 
end
redis:set(veer..'flood'..msg.chat_id_,MsgText[2]) 
return "📡*¦* تم وضع التكرار » { *"..MsgText[2].."* }"
end

if MsgText[1] == "مسح" then
if not MsgText[2] and msg.reply_id then 
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
tdcli_function({ID="DeleteMessages",chat_id_ = msg.chat_id_,message_ids_={[0]=msg.id_,[1]=msg.reply_id}},dl_cb,nil)
return false
end

if MsgText[2] and MsgText[2]:match('^%d+$') then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
if 1000 < tonumber(MsgText[2]) then return "📛*¦* حدود المسح ,  يجب ان تكون ما بين  *[2-1000]*" end
local DelMsg = MsgText[2] + 1
GetHistory(msg.chat_id_,DelMsg,function(arg,data)
All_Msgs = {}
for k, v in pairs(data.messages_) do
if k ~= 0 then
if k == 1 then
All_Msgs[0] = v.id_
else
table.insert(All_Msgs,v.id_)
end  
end 
end 
if tonumber(DelMsg) == data.total_count_ then
tdcli_function({ID="DeleteMessages",chat_id_ = msg.chat_id_,message_ids_=All_Msgs},function(arg,data) 
sendMsg(msg.chat_id_,msg.id_,"*⛑¦* تـم مسح ~⪼ { *"..MsgText[2].."* } من الرسائل  \n✓")
end,{chat_id_=msg.chat_id_,id_=msg.id_})
else
tdcli_function({ID="DeleteMessages",chat_id_=msg.chat_id_,message_ids_=All_Msgs},function() 
sendMsg(msg.chat_id_,msg.id_,"*⛑¦* تـم مسح ~⪼ { *"..MsgText[2].."* } من الرسائل  \n✓")
end,nil)
end
end)
return false
end

if MsgText[2] == "الادمنيه" then 
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end

local Admins = redis:scard(veer..'admins:'..msg.chat_id_)
if Admins == 0 then  
return "📡*¦* اوه ☢ هنالك خطأ 🚸\n📛¦ عذرا لا يوجد ادمنيه ليتم مسحهم ✓" 
end
redis:del(veer..'admins:'..msg.chat_id_)
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."   \n📛¦ تم مسح {"..Admins.."} من الادمنيه في البوت \n✓"
end


if MsgText[2] == "قائمه المنع" then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
local Mn3Word = redis:scard(veer..':Filter_Word:'..msg.chat_id_)
if Mn3Word == 0 then 
return "📡*¦* عذرا لا توجد كلمات ممنوعه ليتم حذفها ✓" 
end
redis:del(veer..':Filter_Word:'..msg.chat_id_)
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."   \n🔖¦ تم مسح {*"..Mn3Word.."*} كلمات من المنع ✓"
end


if MsgText[2] == "القوانين" then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
if not redis:get(veer..'rulse:msg'..msg.chat_id_) then 
return "📛¦ عذرا لا يوجد قوانين ليتم مسحه \n!" 
end
redis:del(veer..'rulse:msg'..msg.chat_id_)
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."   \n📛¦ تم حذف القوانين بنجاح ✓"
end


if MsgText[2] == "الترحيب"  then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
if not redis:get(veer..'welcome:msg'..msg.chat_id_) then 
return "📡*¦* اوه ☢ هنالك خطأ 🚸\n📛¦ عذرا لا يوجد ترحيب ليتم مسحه ✓" 
end
redis:del(veer..'welcome:msg'..msg.chat_id_)
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."   \n📛¦ تم حذف الترحيب بنجاح \n✓"
end


if MsgText[2] == "المنشئين" then
if not msg.SudoUser then return "📛*¦* هذا الامر يخص {المطور} فقط  \n🚶" end
local NumMnsha = redis:scard(veer..':MONSHA_BOT:'..msg.chat_id_)
if NumMnsha ==0 then 
return "📛¦ عذرا لا يوجد منشئيين ليتم مسحهم \n!" 
end
redis:del(veer..':MONSHA_BOT:'..msg.chat_id_)
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."   \n📛¦  تم مسح {* "..NumMnsha.." *} من المنشئيين\n✓"
end


if MsgText[2] == "المدراء" then
if not msg.Creator then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
local NumMDER = redis:scard(veer..'owners:'..msg.chat_id_)
if NumMDER ==0 then 
return "📛¦ عذرا لا يوجد مدراء ليتم مسحهم \n!" 
end
redis:del(veer..'owners:'..msg.chat_id_)
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."   \n📛¦  تم مسح {* "..NumMDER.." *} من المدراء  \n✓"
end

if MsgText[2] == 'المحظورين' then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end

local list = redis:smembers(veer..'banned:'..msg.chat_id_)
if #list == 0 then return "*📌¦ لا يوجد مستخدمين محظورين  *" end
message = '📋*¦* قائمه الاعضاء المحظورين :\n'
for k,v in pairs(list) do
StatusLeft(msg.chat_id_,v)
end 
redis:del(veer..'banned:'..msg.chat_id_)
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."   \n📛¦  تم مسح {* "..#list.." *} من المحظورين  \n✓"
end

if MsgText[2] == 'المكتومين' then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
local MKTOMEN = redis:scard(veer..'is_silent_users:'..msg.chat_id_)
if MKTOMEN ==0 then 
return "📡*¦* لا يوجد مستخدمين مكتومين في المجموعه " 
end
redis:del(veer..'is_silent_users:'..msg.chat_id_)
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."   \n📛¦  تم مسح {* "..MKTOMEN.." *} من المكتومين  \n✓"
end

if MsgText[2] == 'المميزين' then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
local MMEZEN = redis:scard(veer..'whitelist:'..msg.chat_id_)
if MMEZEN ==0 then 
return "*⚙️*¦ لا يوجد مستخدمين مميزين في المجموعه " 
end
redis:del(veer..'whitelist:'..msg.chat_id_)
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."   \n📛¦  تم مسح {* "..MMEZEN.." *} من المميزين  \n✓"
end

if MsgText[2] == 'الرابط' then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
if not redis:get(veer..'linkGroup'..msg.chat_id_) then 
return "⚙️¦ اوه 🙀 لا يوجد رابط مضاف اصلا ☹️\n📡" 
end
redis:del(veer..'linkGroup'..msg.chat_id_)
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."   \n📛¦ تم مسح رابط المجموعه \n✓"
end


end 
--End del 

if MsgText[1] == "ضع اسم" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
redis:setex(veer..'name:witting'..msg.sender_user_id_,300,true)
return "📭¦ حسننا عزيزي  ✋🏿\n🗯¦ الان ارسل الاسم  للمجموعه \n🛠"
end

if MsgText[1] == "حذف صوره" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
tdcli_function({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = {ID = "InputFileId", id_ = 0}},function(arg,data)
if data.message_ and data.message_ == "CHAT_NOT_MODIFIED" then
sendMsg(arg.ChatID,arg.MsgID,'🚸¦ عذرا , لا توجد صوره في المجموعة\n✖️')
elseif data.message_ and data.message_ == "CHAT_ADMIN_REQUIRED" then
sendMsg(arg.ChatID,arg.MsgID,'🚸¦ عذرا , البوت ليس لدية صلاحيه التعديل في المجموعة \n✖️')
else
sendMsg(arg.ChatID,arg.MsgID,'🚸¦ تم حذف صوره آلمـجمـوعهہ 🌿\n✖️')
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
return false
end

if MsgText[1] == "ضع صوره" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
if msg.reply_id then
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg, data)
if data.content_.ID == 'MessagePhoto' then
if data.content_.photo_.sizes_[3] then 
photo_id = data.content_.photo_.sizes_[3].photo_.persistent_id_
else 
photo_id = data.content_.photo_.sizes_[0].photo_.persistent_id_
end
tdcli_function({
ID="ChangeChatPhoto",
chat_id_=arg.ChatID,
photo_ = GetInputFile(arg.photo_id)},
function(arg,data)
if data.code_ and data.code_ == 3 then
return sendMsg(arg.ChatID,arg.MsgID,'🚸 ¦ ليس لدي صلاحيه تغيير الصوره \n🤖 ¦ يجب اعطائي صلاحيه `تغيير معلومات المجموعه ` ⠀\n✓')
end
end,{ChatID=arg.ChatID,MsgID=arg.MsgID,photo_id=photo_id})
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
return false
else 
redis:setex(veer..'photo:group'..msg.chat_id_..msg.sender_user_id_,300,true)
return '📭¦ حسننا عزيزي 🍁\n🌄 ¦ الان قم بارسال الصوره\n🛠' 
end 
end

if MsgText[1] == "ضع وصف" then 
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
redis:setex(veer..'about:witting'..msg.sender_user_id_,300,true) 
return "📭¦ حسننا عزيزي  ✋🏿\n🗯¦ الان ارسل الوصف  للمجموعه\n🛠" 
end

if MsgText[1] == "منع" then 
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
return AddFilter(msg, MsgText[2]) 
end

if MsgText[1] == "الغاء منع" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
return RemFilter(msg, MsgText[2]) 
end

if MsgText[1] == "قائمه المنع" then 
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
return FilterXList(msg) 
end

if MsgText[1] == "الحمايه" then 
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
return settingsall(msg) 
end

if MsgText[1] == "الاعدادات" then 
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
return settings(msg) 
end

if MsgText[1] == "الوسائط" then 
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
return media(msg) 
end

if MsgText[1] == "الادمنيه" then 
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
return GetListAdmin(msg) 
end

if MsgText[1] == "المنشئين" then 
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
return monshe(msg) 
end

if MsgText[1] == "المدراء" then 
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
return ownerlist(msg) 
end

if MsgText[1] == "المميزين" then 
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
return whitelist(msg) 
end

if MsgText[1] == "طرد البوتات" then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ} فقط  \n🚶" end
tdcli_function({ID="GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''),filter_={ID="ChannelMembersBots"},offset_=0,limit_=50},function(arg,data)
local Total = data.total_count_ or 0
if Total == 1 then
return sendMsg(arg.ChatID,arg.MsgID,"🔖| لا يـوجـد بـوتـات في الـمـجـمـوعـه .") 
else
local NumBot = 0
local NumBotAdmin = 0
for k, v in pairs(data.members_) do
if v.user_id_ ~= our_id then
kick_user(v.user_id_,arg.ChatID,function(arg,data)
if data.ID == "Ok" then
NumBot = NumBot + 1
else
NumBotAdmin = NumBotAdmin + 1
end
local TotalBots = NumBot + NumBotAdmin  
if TotalBots  == Total - 1 then
local TextR  = "📌| عـدد الـبـوتات •⊱ {* "..(Total - 1).." *} ⊰•\n\n"
if NumBot == 0 then 
TextR = TextR.."📮| لا يـمـكـن طردهم لانـهـم مشـرفـين .\n"
else
if NumBotAdmin >= 1 then
TextR = TextR.."🔖| لم يتم طـرد {* "..NumBotAdmin.." *} بوت لآنهہ‌‏م مـشـرفين."
else
TextR = TextR.."📮| تم طـرد كــل البوتآت بنجآح .\n"
end
end
return sendMsg(arg.ChatID,arg.MsgID,TextR) 
end
end,{ChatID=arg.ChatID,MsgID=arg.MsgID})
end
end
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
return false
end

if MsgText[1] == "كشف البوتات" then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
tdcli_function({ID="GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''),
filter_ ={ID= "ChannelMembersBots"},offset_ = 0,limit_ = 50},function(arg,data)
local total = data.total_count_ or 0
AllBots = '🤖| قـائمه البوتات الـحالية\n\n'
local NumBot = 0
for k, v in pairs(data.members_) do
GetUserID(v.user_id_,function(arg,data)
if v.status_.ID == "ChatMemberStatusEditor" then
BotAdmin = "» *★*"
else
BotAdmin = ""
end
NumBot = NumBot + 1
AllBots = AllBots..NumBot..'- @['..data.username_..'] '..BotAdmin..'\n'
if NumBot == total then
AllBots = AllBots..[[

📮| لـديـک {]]..total..[[} بـوتـآت
🔖| ملاحظة : الـ ★ تعنـي ان البوت مشرف في المجموعـة.]]
sendMsg(arg.ChatID,arg.MsgID,AllBots) 
end
end,{ChatID=arg.ChatID,MsgID=arg.MsgID})
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
return false
end

if MsgText[1] == 'طرد المحذوفين' then
if not msg.Creator then return "📛*¦* هذا الامر يخص {المطور,المنشئ} فقط  \n🚶" end
sendMsg(msg.chat_id_,msg.id_,'🔛| جاري البحث عـن الـحـسـابـات المـحذوفـة ...')
tdcli_function({ID="GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100','')
,offset_ = 0,limit_ = 200},function(arg,data)
if data.total_count_ and data.total_count_ <= 200 then
Total = data.total_count_ or 0
else
Total = 200
end
local NumMem = 0
local NumMemDone = 0
for k, v in pairs(data.members_) do 
GetUserID(v.user_id_,function(arg,datax)
if datax.type_.ID == "UserTypeDeleted" then 
NumMemDone = NumMemDone + 1
kick_user(v.user_id_,arg.ChatID,function(arg,data)  
redis:srem(veer..':MONSHA_BOT:'..arg.ChatID,v.user_id_)
redis:srem(veer..'whitelist:'..arg.ChatID,v.user_id_)
redis:srem(veer..'owners:'..arg.ChatID,v.user_id_)
redis:srem(veer..'admins:'..arg.ChatID,v.user_id_)
end)
end
NumMem = NumMem + 1
if NumMem == Total then
if NumMemDone >= 1 then
sendMsg(arg.ChatID,arg.MsgID,"🚸 ¦ تم طـرد {* "..NumMemDone.." *} من آلحسـآبآت آلمـحذوفهہ‏‏ 🌿")
else
sendMsg(arg.ChatID,arg.MsgID,'🚸 ¦ لا يوجد حسابات محذوفه في المجموعه 🌿')
end
end
end,{ChatID=arg.ChatID,MsgID=arg.MsgID})
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
return false
end  

if MsgText[1] == 'شحن' and MsgText[2] then
if not msg.SudoUser then return "📛*¦* هذا الامر يخص {المطور} فقط  \n🚶" end
if tonumber(MsgText[2]) > 0 and tonumber(MsgText[2]) < 1001 then
local extime = (tonumber(MsgText[2]) * 86400)
redis:setex(veer..'ExpireDate:'..msg.chat_id_, extime, true)
if not redis:get(veer..'CheckExpire::'..msg.chat_id_) then 
redis:set(veer..'CheckExpire::'..msg.chat_id_,true) end
sendMsg(msg.chat_id_,msg.id_,'💂🏻‍♀️¦ تم شحن الاشتراك الى `'..MsgText[2]..'` يوم   ... 👍🏿')
sendMsg(SUDO_ID,0,'💂🏻‍♀️¦ تم شحن الاشتراك الى `'..MsgText[2]..'` يوم   ... 👍🏿\n🕵🏼️‍♀️¦ في مجموعه  » »  '..redis:get(veer..'group:name'..msg.chat_id_))
else
sendMsg(msg.chat_id_,msg.id_,'💂🏻‍♀️¦ عزيزي المطور ✋🏿\n👨🏻‍🔧¦ شحن الاشتراك يكون ما بين يوم الى 1000 يوم فقط 🍃')
end 
return false
end

if MsgText[1] == 'الاشتراك' and MsgText[2] then 
if not msg.SudoUser then return "📛*¦* هذا الامر يخص {المطور} فقط  \n🚶" end
if MsgText[2] == '1' then
redis:setex(veer..'ExpireDate:'..msg.chat_id_, 2592000, true)
if not redis:get(veer..'CheckExpire::'..msg.chat_id_) then 
redis:set(veer..'CheckExpire::'..msg.chat_id_,true) 
end
sendMsg(msg.chat_id_,msg.id_,'💂🏻‍♀️¦ تم تفعيل الاشتراك   👍🏿\n📆¦  الاشتراك » `30 يوم`  *(شهر)*')
sendMsg(SUDO_ID,0,'💂🏻‍♀️¦ تم تفعيل الاشتراك  👍🏿\n📆¦  الاشتراك » `30 يوم`  *(شهر)*')
end
if MsgText[2] == '2' then
redis:setex(veer..'ExpireDate:'..msg.chat_id_,7776000,true)
if not redis:get(veer..'CheckExpire::'..msg.chat_id_) then 
redis:set(veer..'CheckExpire::'..msg.chat_id_,true) 
end
sendMsg(msg.chat_id_,msg.id_,'💂🏻‍♀️¦ تم تفعيل الاشتراك   👍🏿\n📆¦  الاشتراك » `90 يوم`  *(3 اشهر)*')
sendMsg(SUDO_ID,0,'💂🏻‍♀️¦ تم تفعيل الاشتراك   👍🏿\n📆¦  الاشتراك » `90 يوم`  *(3 اشهر)*')
end
if MsgText[2] == '3' then
redis:set(veer..'ExpireDate:'..msg.chat_id_,true)
if not redis:get(veer..'CheckExpire::'..msg.chat_id_) then 
redis:set(veer..'CheckExpire::'..msg.chat_id_,true) end
sendMsg(msg.chat_id_,msg.id_,'💂🏻‍♀️¦ تم تفعيل الاشتراك   👍🏿\n📆¦  الاشتراك » `مفتوح`  *(مدى الحياة)*')
sendMsg(SUDO_ID,0,'💂🏻‍♀️¦ تم تفعيل الاشتراك   👍🏿\n📆¦  الاشتراك » `مفتوح`  *(مدى الحياة)*')
end 
return false
end

if MsgText[1] == 'الاشتراك' and not MsgText[2] and msg.Admin then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
local check_time = redis:ttl(veer..'ExpireDate:'..msg.chat_id_)
if check_time < 0 then return '*مـفـتـوح *🎖\n✓' end
year = math.floor(check_time / 31536000)
byear = check_time % 31536000 
month = math.floor(byear / 2592000)
bmonth = byear % 2592000 
day = math.floor(bmonth / 86400)
bday = bmonth % 86400 
hours = math.floor( bday / 3600)
bhours = bday % 3600 
min = math.floor(bhours / 60)
sec = math.floor(bhours % 60)
if tonumber(check_time) > 1 and check_time < 60 then
remained_expire = '💳¦ `باقي من الاشتراك ` » » * \n 📆¦  '..sec..'* ثانيه'
elseif tonumber(check_time) > 60 and check_time < 3600 then
remained_expire = '💳¦ `باقي من الاشتراك ` » » '..min..' *دقيقه و * *'..sec..'* ثانيه'
elseif tonumber(check_time) > 3600 and tonumber(check_time) < 86400 then
remained_expire = '💳¦ `باقي من الاشتراك ` » » * \n 📆¦  '..hours..'* ساعه و *'..min..'* دقيقه و *'..sec..'* ثانيه'
elseif tonumber(check_time) > 86400 and tonumber(check_time) < 2592000 then
remained_expire = '💳¦ `باقي من الاشتراك ` » » * \n 📆¦  '..day..'* يوم و *'..hours..'* ساعه و *'..min..'* دقيقه و *'..sec..'* ثانيه'
elseif tonumber(check_time) > 2592000 and tonumber(check_time) < 31536000 then
remained_expire = '💳¦ `باقي من الاشتراك ` » » * \n 📆¦  '..month..'* شهر و *'..day..'* يوم و *'..hours..'* ساعه و *'..min..'* دقيقه و *'..sec..'* ثانيه'
elseif tonumber(check_time) > 31536000 then
remained_expire = '💳¦ `باقي من الاشتراك ` » » * \n 📆¦  '..year..'* سنه و *'..month..'* شهر و *'..day..'* يوم و *'..hours..'* ساعه و *'..min..'* دقيقه و *'..sec..'* ثانيه' end
return remained_expire
end

if MsgText[1] == "الرتبه" and not MsgText[2] and msg.reply_id then 
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
GetChatMember(arg.ChatID,data.sender_user_id_,function(arg,data)
if data.status_ and data.status_.ID == "ChatMemberStatusEditor" then
SudoGroups = 'مشرف '
elseif data.status_ and data.status_.ID == "ChatMemberStatusCreator" then 
SudoGroups = "منشئ ."
else
SudoGroups = "عضو .!"
end
if arg.UserID == our_id then 
Getrtb = 'ادمن' 
elseif  arg.UserID == SUDO_ID then
Getrtb = 'مطور اساسي ' 
elseif redis:sismember(veer..':SUDO_BOT:',arg.UserID) then
Getrtb = 'مطور ' 
elseif redis:sismember(veer..':MONSHA_BOT:'..arg.ChatID,arg.UserID) then
Getrtb = 'منشئ' 
elseif redis:sismember(veer..'owners:'..arg.ChatID,arg.UserID) then
Getrtb = 'المدير ' 
elseif redis:sismember(veer..'admins:'..arg.ChatID,arg.UserID) then
Getrtb = 'ادمن' 
elseif redis:sismember(veer..'whitelist:'..arg.ChatID,arg.UserID) then
Getrtb = 'مميز' 
else
Getrtb = 'عضو' 
end
GetUserID(arg.UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR  = utf8.len(USERNAME)
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..'\n\nـ⠀•⊱ { رتـبـه الشخص } ⊰•\n\n🤖¦ في البوت » '..arg.Getrtb..' \n💬¦ في المجموعه » '..arg.SudoGroups..'\n✓',12,utf8.len(USERNAME)) 
end,{ChatID=arg.ChatID,UserID=arg.UserID,MsgID=arg.MsgID,Getrtb=Getrtb,SudoGroups=SudoGroups})
end,{ChatID=arg.ChatID,UserID=data.sender_user_id_,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
return false
end

if MsgText[1] == "كشف البوت" and not MsgText[2] then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
GetChatMember(msg.chat_id_,our_id,function(arg,data)
if data.status_.ID ~= "ChatMemberStatusMember" then 
sendMsg(arg.ChatID,arg.MsgID,'📡*¦* جيد , الـبــوت ادمــن الان \n')
else 
sendMsg(arg.ChatID,arg.MsgID,'📡*¦* كلا البوت ليس ادمن في المجموعة 📛')
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
return false 
end

if MsgText[1]== 'رسائلي' or MsgText[1] == 'رسايلي' or MsgText[1] == 'احصائياتي'  then
GetUserID(msg.sender_user_id_,function(arg,data)
local msgs = (redis:get(veer..'msgs:'..msg.sender_user_id_..':'..msg.chat_id_) or 0)
local NumGha = (redis:get(veer..':adduser:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local photo = (redis:get(veer..':photo:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local sticker = (redis:get(veer..':sticker:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local voice = (redis:get(veer..':voice:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local audio = (redis:get(veer..':audio:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local animation = (redis:get(veer..':animation:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local edited = (redis:get(veer..':edited:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local video = (redis:get(veer..':video:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)

local Get_info =  "⠀\n⠀•⊱ { الاحـصـائـيـات الـرسـائـل } ⊰•\n"
.."💬¦ الـرسـائـل •⊱ { `"..msgs.."` } ⊰•\n"
.."📞¦ الـجـهـات •⊱ { `"..NumGha.."` } ⊰•\n"
.."📸¦ الـصـور •⊱ { `"..photo.."` } ⊰•\n"
.."📽¦ الـمـتـحـركـه •⊱ { `"..animation.."` } ⊰•\n"
.."🔖¦ الـمـلـصـقات •⊱ { `"..sticker.."` } ⊰•\n"
.."🎙¦ الـبـصـمـات •⊱ { `"..voice.."` } ⊰•\n"
.."🔊¦ الـصـوت •⊱ { `"..audio.."` } ⊰•\n"
.."🎞¦ الـفـيـديـو •⊱ { `"..video.."` } ⊰•\n"
.."📬¦ الـتـعـديـل •⊱ { `"..edited.."` } ⊰•\n\n"
.."📊¦ تـفـاعـلـك  •⊱ "..Get_Ttl(msgs).." ⊰•\n"
.."ـ.——————————\n"
return sendMsg(arg.chat_id_,arg.id_,Get_info)    
end,{chat_id_=msg.chat_id_,id_=msg.id_})
return false
end

if MsgText[1]== 'جهاتي' then
return '🧟‍♂*¦*  عدد جهہآتگ آلمـضـآفهہ‏‏ » 【'..(redis:get(veer..':adduser:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)..'】 . \n🐾'
end

if MsgText[1] == 'معلوماتي' or MsgText[1] == 'موقعي' then
GetUserID(msg.sender_user_id_,function(arg,data)
local msgs = (redis:get(veer..'msgs:'..msg.sender_user_id_..':'..msg.chat_id_) or 0)
local NumGha = (redis:get(veer..':adduser:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local photo = (redis:get(veer..':photo:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local sticker = (redis:get(veer..':sticker:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local voice = (redis:get(veer..':voice:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local audio = (redis:get(veer..':audio:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local animation = (redis:get(veer..':animation:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local edited = (redis:get(veer..':edited:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
local video = (redis:get(veer..':video:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)
USERNAME = ""
Name = data.first_name_
if data.last_name_ then Name = data.first_name_ .." "..data.last_name_ end
if data.username_ then USERNAME = "💠¦ المعرف •⊱ @["..data.username_.."] ⊰•\n" end 
SUDO_USER = redis:hgetall(veer..'username:'..SUDO_ID).username
if SUDO_USER:match('@[%a%d_]+') then 
SUDO_USER = "👨🏻‍💻¦ مـطـور البوت •⊱ "..SUDO_USER.." ⊰•\n"
else
SUDO_USER = ""
end
local Get_info = "👨🏽‍🔧¦ اهـلا بـك عزيزي في معلوماتك 🥀 \n"
.."ـ.——————————\n"
.."🗯¦ الاســم •⊱{ "..FlterName(Name,25) .." }⊰•\n"
..USERNAME
.."⚜️¦ الايـدي •⊱ { `"..data.id_.."` } ⊰•\n"
.."🚸¦ رتبتــك •⊱ "..arg.TheRank.." ⊰•\n"
.."🔰¦ ــ •⊱ { `"..arg.chat_id_.."` } ⊰•\n"
.."ـ.——————————\n"
.." •⊱ { الاحـصـائـيـات الـرسـائـل } ⊰•\n"
.."💬¦ الـرسـائـل •⊱ { `"..msgs.."` } ⊰•\n"
.."📞¦ الـجـهـات •⊱ { `"..NumGha.."` } ⊰•\n"
.."📸¦ الـصـور •⊱ { `"..photo.."` } ⊰•\n"
.."📽¦ الـمـتـحـركـه •⊱ { `"..animation.."` } ⊰•\n"
.."🔖¦ الـمـلـصـقات •⊱ { `"..sticker.."` } ⊰•\n"
.."🎙¦ الـبـصـمـات •⊱ { `"..voice.."` } ⊰•\n"
.."🔊¦ الـصـوت •⊱ { `"..audio.."` } ⊰•\n"
.."🎞¦ الـفـيـديـو •⊱ { `"..video.."` } ⊰•\n"
.."📬¦ الـتـعـديـل •⊱ { `"..edited.."` } ⊰•\n\n"
.."📊¦ تـفـاعـلـك  •⊱ "..Get_Ttl(msgs).." ⊰•\n"
.."ـ.——————————\n"
..SUDO_USER
sendMsg(arg.chat_id_,arg.id_,Get_info)    
end,{chat_id_=msg.chat_id_,id_=msg.id_,TheRank=msg.TheRank})
return false
end

if MsgText[1] == "تفعيل" then
if MsgText[2] == "الايدي بالصوره" 	then return unlock_photo(msg) end
if MsgText[2] == "الردود" 			then return unlock_replay(msg) end
if MsgText[2] == "الاذاعه" 			then return unlock_brod(msg) end
if MsgText[2] == "الايدي" 			then return unlock_ID(msg) end
if MsgText[2] == "الترحيب" 			then return unlock_Welcome(msg) end
if MsgText[2] == "التحذير" 			then return unlock_waring(msg) end 
end

if MsgText[1] == "تعطيل" then
if MsgText[2] == "الايدي بالصوره" 	then return lock_photo(msg) end
if MsgText[2] == "الردود" 			then return lock_replay(msg) end
if MsgText[2] == "الاذاعه" 			then return lock_brod(msg) end
if MsgText[2] == "الايدي" 			then return lock_ID(msg) end
if MsgText[2] == "الترحيب" 			then return lock_Welcome(msg) end
if MsgText[2] == "التحذير" 			then return lock_waring(msg) end
end

if MsgText[1] == "ضع الترحيب" then 
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
redis:set(veer..'welcom:witting'..msg.sender_user_id_,true) 
return "📭¦ حسننا عزيزي  ✋🏿\n🗯¦ ارسل كليشه الترحيب الان\n\n🔖¦ ملاحظه تستطيع اضافه دوال للترحيب مثلا :\n🗒¦ اضهار قوانين المجموعه  » *{القوانين}*  \n📰¦  اضهار الاسم العضو » *{الاسم}*\n🏷¦ اضهار المعرف العضو » *{المعرف}*\n🏷¦ اضهار اسم المجموعه » *{المجموعه}*" 
end

if MsgText[1] == "الترحيب" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
if redis:get(veer..'welcome:msg'..msg.chat_id_)  then
return Flter_Markdown(redis:get(veer..'welcome:msg'..msg.chat_id_))
else 
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."  \n🌿¦ نورت المجموعه \n💂🏼‍♀️" 
end 
end

if MsgText[1] == "تعين الايدي" or MsgText[1] == "تعيين الايدي" then 
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
redis:set(veer..'idveer:edit'..msg.sender_user_id_,true) 
return "📭¦ حسننا عزيزي  ✋🏿\n🗯¦ ارسل كليشه الايدي الان\n\n🔖¦ دوال الايدي هي :👇\n👤¦ اظهار اسم العضو » `{الاسم}`\n🎫¦ اظهار معرف العضو » `{المعرف}`\n🏷¦ اظهار ايدي العضو » `{الايدي}`\n📮¦ اظهار رتبه العضو » `{الرتبه}`\n⭐️¦ اظهار تفاعل العضو » `{التفاعل}`\n💬¦ اظهار رسائل العضو » `{الرسائل}`\n📞¦ اظهار جهات العضو » `{الجهات}`\n📬¦ اظهار سحكات العضو » `{السحكات}`\n🖲¦ اظهار نقاط العضو في الالعاب » `{النقاط}`" 
end

if MsgText[1] == "مسح الايدي" or MsgText[1] == "حذف الايدي" then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
if not redis:get(veer..'idveer:msg'..msg.chat_id_) then 
return "📡*¦* اوه ☢ هنالك خطأ 🚸\n📛¦ عذرا لا يوجد كليشه ايدي ليتم مسحه ✓" 
end
redis:del(veer..'idveer:msg'..msg.chat_id_)
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."   \n📛¦ تم حذف كليشه الايدي بنجاح \n✓"
end

if MsgText[1] == "المكتومين" then 
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
return MuteUser_list(msg) 
end

if MsgText[1] == "المحظورين" then 
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
return GetListBanned(msg) 
end

if MsgText[1] == "رفع الادمنيه" then
if not msg.Creator then return "📛*¦* هذا الامر يخص {المطور,المنشئ} فقط  \n🚶" end
return set_admins(msg) 
end

end -- end of insert group 


if MsgText[1] == 'مسح' and MsgText[2] == 'المطورين'  then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
local mtwren = redis:scard(veer..':SUDO_BOT:')
if mtwren == 0 then  return "⚙️*¦* عذرا لا يوجد مطورين في البوت  ✖️" end
redis:del(veer..':SUDO_BOT:') 
return "📛*¦* تم مسح {* "..mtwren.." *} من المطورين ☔️\n✓"
end

if MsgText[1] == 'مسح' and MsgText[2] == "قائمه العام"  then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
local addbannds = redis:scard(veer..'gban_users')
if addbannds ==0 then 
return "*⚙️¦ قائمة الحظر فارغه .*" 
end
redis:del(veer..'gban_users') 
return "⚙️*¦* تـم مـسـح { *"..addbannds.." *} من قائمه العام\n✓" 
end 

if msg.SudoBase then

if MsgText[1] == "رفع مطور" then
if not MsgText[2] and msg.reply_id then 
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* عذرا لا يمكنني رفع بوت \n📛") 
end
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME)
if redis:sismember(veer..':SUDO_BOT:',arg.UserID) then 
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ انه بالتأكيد مطور \n✓️',12,USERCAR) 
else
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم ترقيته ليصبح مطور \n✓️',12,USERCAR) 
redis:hset(veer..'username:'..arg.UserID,'username',USERNAME)
redis:sadd(veer..':SUDO_BOT:',arg.UserID)
end
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
end

if MsgText[2] and MsgText[2]:match('@[%a%d_]+') then 
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
local UserID = data.id_
UserName = Flter_Markdown(arg.UserName)
if redis:sismember(veer..':SUDO_BOT:',UserID) then 
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* انه بالتأكيد مطور \n✓') 
else
redis:hset(veer..'username:'..UserID,'username',UserName)
redis:sadd(veer..':SUDO_BOT:',UserID)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تم ترقيته ليصبح مطور \n✓')
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
end 
if MsgText[2] and MsgText[2]:match('^%d+$') then 
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="up_sudo"}) 
end
return false
end

if MsgText[1] == "تنزيل مطور" then
if not MsgText[2] and msg.reply_id then 
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME)
if not redis:sismember(veer..':SUDO_BOT:',arg.UserID) then 
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ انه بالتأكيد ليس مطور \n✓️',12,utf8.len(USERNAME)) 
else
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم تنزيله من المطورين \n✓️',12,utf8.len(USERNAME)) 
redis:srem(veer..':SUDO_BOT:',arg.UserID)
end  
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
end
if MsgText[2] and MsgText[2]:match('@[%a%d_]+') then 
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
local UserID = data.id_
UserName = Flter_Markdown(arg.UserName)
if not redis:sismember(veer..':SUDO_BOT:',UserID) then 
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* انه بالتأكيد ليس مطور \n✓')
else
redis:srem(veer..':SUDO_BOT:',UserID)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تم تنزيله من المطورين \n✓') 
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
end 
if MsgText[2] and MsgText[2]:match('^%d+$') then 
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="dn_sudo"}) 
end
return false
end

if MsgText[1] == "تنظيف المجموعات" then
local groups = redis:smembers(veer..'group:ids')
local GroupsIsFound = 0
for i = 1, #groups do 
GroupTitle(groups[i],function(arg,data)
if data.code_ and data.code_ == 400 then
rem_data_group(arg.group)
print(" Del Group From list ")
else
print(" Name Group : "..data.title_)
GroupsIsFound = GroupsIsFound + 1
end
print(GroupsIsFound..' : '..arg.groupsC..' : '..arg.i)
if arg.groupsC == arg.i then
local GroupDel = arg.groupsC - GroupsIsFound 
if GroupDel == 0 then
sendMsg(arg.chat_id_,arg.id_,'💯*¦* جـيـد , لا توجد مجموعات وهميه \n✓')
else
sendMsg(arg.chat_id_,arg.id_,'📑*¦* عدد المجموعات •⊱ { *'..arg.groupsC..'*  } ⊰•\n🚸*¦* تـم تنظيف  •⊱ { *'..GroupDel..'*  } ⊰• مجموعه \n📉*¦* اصبح العدد الحقيقي الان •⊱ { *'..GroupsIsFound..'*  } ⊰• مجموعه')
end
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,groupsC=#groups,group=groups[i],i=i})
end
return false
end

if MsgText[1] == "تنظيف المشتركين" then
local pv = redis:smembers(veer..'users')
local NumPvDel = 0
for i = 1, #pv do
sendChatAction(pv[i],"Typing",function(arg,data)
if data.ID and data.ID == "Ok"  then
print("Sender Ok")
else
print("Failed Sender Nsot Ok")
redis:srem(veer..'users',arg.pv)
NumPvDel = NumPvDel + 1
end
print(arg.pvC.." : "..arg.i)
if arg.pvC == arg.i then 
if NumPvDel == 0 then
sendMsg(arg.chat_id_,arg.id_,'👨🏼‍⚕️| جـيـد , لا يوجد مشتركين وهمي')
else
local SenderOk = arg.pvC - NumPvDel
sendMsg(arg.chat_id_,arg.id_,'📑*¦* عدد المشتركين •⊱ { *'..arg.pvC..'*  } ⊰•\n🚸*¦* تـم تنظيف  •⊱ { *'..NumPvDel..'*  } ⊰• مشترك \n📉*¦* اصبح العدد الحقيقي الان •⊱ { *'..SenderOk..'*  } ⊰• من المشتركين') 
end
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,pvC=#pv,pv=pv[i],i=i})
end
return false
end

if MsgText[1] == "تنظيف الوهمي" or MsgText[1] == "تنظيف الوهمي 🗑" then
local pv = redis:smembers(veer..'users')
local NumPvDel = 0
for i = 1, #pv do
sendChatAction(pv[i],"Typing",function(arg,data)
if data.ID and data.ID == "Ok"  then
print("Sender Ok")
else
print("Failed Sender Nsot Ok")
redis:srem(veer..'users',arg.pv)
NumPvDel = NumPvDel + 1
end
print(arg.pvC.." : "..arg.i)
if arg.pvC == arg.i then 
if NumPvDel == 0 then
PvVeer = '👨🏼‍⚕️| جـيـد , لا يوجد مشتركين وهمي\n\n'
else
local SenderOk = arg.pvC - NumPvDel
PvVeer = '👥*¦* عدد المشتركين •⊱ { *'..arg.pvC..'* } ⊰•\n♻️*¦* تـم تنظيف  •⊱ { *'..NumPvDel..'* } ⊰• مشترك \n📊*¦* اصبح العدد الحقيقي الان •⊱ { *'..SenderOk..'* } ⊰• من المشتركين\n\n'
end
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,pvC=#pv,pv=pv[i],i=i})
end

local groups = redis:smembers(veer..'group:ids')
local GroupsIsFound = 0
for i = 1, #groups do 
GroupTitle(groups[i],function(arg,data)
if data.code_ and data.code_ == 400 then
rem_data_group(arg.group)
print(" Del Group From list ")
else
print(" Name Group : "..data.title_)
GroupsIsFound = GroupsIsFound + 1
end
print(GroupsIsFound..' : '..arg.groupsC..' : '..arg.i)
if arg.groupsC == arg.i then
local GroupDel = arg.groupsC - GroupsIsFound 
if GroupDel == 0 then
sendMsg(arg.chat_id_,arg.id_,PvVeer..'💯*¦* جـيـد , لا توجد مجموعات وهميه \n✓')
else
sendMsg(arg.chat_id_,arg.id_,PvVeer..'📑*¦* عدد المجموعات •⊱ { *'..arg.groupsC..'* } ⊰•\n🚸*¦* تـم تنظيف  •⊱ { *'..GroupDel..'* } ⊰• مجموعه \n📉*¦* اصبح العدد الحقيقي الان •⊱ { *'..GroupsIsFound..'* } ⊰• مجموعه\n✓')
end
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,groupsC=#groups,group=groups[i],i=i})
end
return false
end

if MsgText[1] == "ضع صوره للترحيب" or MsgText[1]=="ضع صوره للترحيب 🌄" then
redis:setex(veer..'welcom_ph:witting'..msg.sender_user_id_,300,true) 
return'📭¦ حسننا عزيزي 🍁\n🌄 ¦ الان قم بارسال الصوره للترحيب \n🛠' 
end

if MsgText[1] == "تعطيل" and MsgText[2] == "البوت خدمي" or MsgText[2] == "البوت خدمي 🚫" then 
return lock_service(msg) 
end

if MsgText[1] == "تفعيل" and MsgText[2] == "البوت خدمي" or MsgText[2] == "البوت خدمي 🚸" then 
return unlock_service(msg) 
end

if MsgText[1] == "صوره الترحيب" then
local Photo_Weloame = redis:get(veer..':WELCOME_BOT')
if Photo_Weloame then
SUDO_USER = redis:hgetall(veer..'username:'..SUDO_ID).username
if SUDO_USER:match('@[%a%d_]+') then 
SUDO_USER = "⚖️¦ مـعرف آلمـطـور  » "..SUDO_USER:gsub([[\_]],'_').." 🌿\n👨🏽‍🔧"
else
SUDO_USER = ""
end
sendPhoto(msg.chat_id_,msg.id_,Photo_Weloame,[[💯¦ مـرحبآ آنآ بوت آسـمـي ]]..redis:get(veer..':NameBot:')..[[ 🎖
💰¦ آختصـآصـي حمـآيهہ‏‏ آلمـجمـوعآت
📛¦ مـن آلسـبآم وآلتوجيهہ‏‏ وآلتگرآر وآلخ...
]]..SUDO_USER) 
return false
else
return "📛| لا توجد صوره مضافه للترحيب في البوت \n📌| لاضافه صوره الترحيب ارسل `ضع صوره للترحيب`"
end
end

if MsgText[1] == 'وضع كليشه المطور' or MsgText[1] == "ضع كليشه المطور" then 
redis:setex(veer..'text_sudo:witting'..msg.sender_user_id_,1200,true) 
return '📭¦ حسننا عزيزي 🍁\n💬¦ الان قم بارسال الكليشه \n🛠' 
end

if MsgText[1] == 'مسح كليشه المطور' or MsgText[1] == "حذف كليشه المطور" then 
if not redis:get(veer..":TEXT_SUDO") then
return '⚙️¦ اوه 🙀 لا يوجد كليشه مطور اصلا ☹️\n🛠' end
redis:del(veer..':TEXT_SUDO') 
return '🙋🏼‍♂️¦ أهلا عزيزي المطور 👨🏻‍✈️   \n📛¦ تم مسح كليشه المطور\n✓' 
end


if MsgText[1] == "ضع شرط التفعيل" and MsgText[2] and MsgText[2]:match('^%d+$') then 
redis:set(veer..':addnumberusers',MsgText[2]) 
return '💱*¦* تم وضـع شـرط آلتفعيل آلبوت آذآ گآنت آلمـجمـوعهہ‏‏ آگثر مـن *【'..MsgText[2]..'】* عضـو  🍁\n' 
end

if MsgText[1] == "شرط التفعيل" then 
return'🚸*¦* شـرط آلتفعيل آلبوت آذآ گآنت آلمـجمـوعهہ‏‏ آگثر مـن *【'..redis:get(veer..':addnumberusers')..'】* عضـو  🍁\n' 
end 
end

if MsgText[1] == 'المجموعات' or MsgText[1] == "المجموعات 🔝" then 
if not msg.SudoUser then return "📛*¦* هذا الامر يخص {المطور} فقط  \n🚶" end
return '📮*¦* عدد المجموعات المفعلة » `'..redis:scard(veer..'group:ids')..'`  ➼' 
end

if MsgText[1] == 'قائمه المجموعات' or MsgText[1] == 'قائمة المجموعات 📊' then 
if not msg.SudoBase then return "📛*¦* هذا الامر يخص {المطور} فقط  \n🚶" end
return chat_list(msg) 
end

if MsgText[1] == 'تعطيل' and MsgText[2] and MsgText[2]:match("-100(%d+)") then
if not msg.SudoUser then return "📛*¦* هذا الامر يخص {المطور} فقط  \n🚶" end
local name_gp = redis:get(veer..'group:name'..MsgText[2])
GroupTitle(MsgText[2],function(arg,data)
if data.ID and data.ID == "Error" and data.message_ == "CHANNEL_INVALID" then
if redis:sismember(veer..'group:ids',arg.Group) then
rem_data_group(arg.Group)
sendMsg(arg.chat_id_,arg.id_,'📛*¦* البوت ليس بالمجموعة ولكن تم مسح بياناتها \n🏷*¦* المجموعةة » ['..arg.name_gp..']\n🎫*¦* الايدي » ( *'..arg.Group..'* )\n✓')
else 
sendMsg(arg.chat_id_,arg.id_,'📛*¦* البوت ليس مفعل بالمجموعه ♨️\n🔙*¦* ولا يوجد بيانات لها ✓️')
end
else
StatusLeft(arg.Group,our_id)
if redis:sismember(veer..'group:ids',arg.Group) then
sendMsg(arg.Group,0,'📛*¦* تم تعطيل المجموعه بأمر من المطور  \n🚸*¦* سوف اغادر جاوو 🚶🏻🚶🏻 ...\n✘')
rem_data_group(arg.Group)
sendMsg(arg.chat_id_,arg.id_,'📛*¦* تم تعطيل المجموعه ومغادرتها \n🏷*¦* المجموعةة » ['..arg.name_gp..']\n🎫*¦* الايدي » ( *'..arg.Group..'* )\n✓')
else 
sendMsg(arg.chat_id_,arg.id_,'📛*¦* البوت ليس مفعل بالمجموعة \n🎫*¦* ولكن تم مغادرتها\n🏷*¦* المجموعةة » ['..arg.name_gp..']\n✓')
end
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,Group=MsgText[2],name_gp=name_gp})
return false
end

if MsgText[1] == 'المطور' then
return send_msg(msg.chat_id_,redis:get(veer..":TEXT_SUDO") or '🗃¦ لا توجد كليشه المطور .\n📰¦ يمكنك اضافه كليشه من خلال الامر\n       " `ضع كليشه المطور` " \n📡',msg.id_)
end

if MsgText[1] == "اذاعه عام بالتوجيه" or MsgText[1] == "اذاعه عام بالتوجيه 📣" then
if not msg.SudoUser then return"📛*¦* هذا الامر يخص {المطور} فقط  \n🚶" end
if not msg.SudoBase and not redis:get(veer..'lock_brod') then 
return "📡*¦* الاذاعه مقفوله من قبل المطور الاساسي  🚶" 
end
redis:setex(veer..'fwd:'..msg.sender_user_id_,300, true) 
return "📭¦ حسننا الان ارسل التوجيه للاذاعه عام \n🔛" 
end

if MsgText[1] == "اذاعه بالتوجيه" or MsgText[1] == "اذاعه بالتوجيه ↪️" then
if not msg.SudoUser then return"📛*¦* هذا الامر يخص {المطور} فقط  \n🚶" end
if not msg.SudoBase and not redis:get(veer..'lock_brod') then 
return "📡*¦* الاذاعه مقفوله من قبل المطور الاساسي  🚶" 
end
redis:setex(veer..'fwd:groupsveer'..msg.sender_user_id_,300, true) 
return "📭¦ حسننا الان ارسل التوجيه للاذاعه للمجموعات \n🔛" 
end

if MsgText[1] == "اذاعه خاص بالتوجيه" or MsgText[1] == "اذاعه خاص بالتوجيه 🗣" then
if not msg.SudoUser then return"📛*¦* هذا الامر يخص {المطور} فقط  \n🚶" end
if not msg.SudoBase and not redis:get(veer..'lock_brod') then 
return "📡*¦* الاذاعه مقفوله من قبل المطور الاساسي  🚶" 
end
redis:setex(veer..'fwd:number'..msg.sender_user_id_,300, true) 
return "📭¦ حسننا الان ارسل التوجيه للاذاعه للمشتركين \n🔛" 
end

if MsgText[1] == "اذاعه عام" or MsgText[1] == "اذاعه عام 📢" then		
if not msg.SudoUser then return"📛*¦* هذا الامر يخص {المطور} فقط  \n🚶" end
if not msg.SudoBase and not redis:get(veer..'lock_brod') then 
return "📡*¦* الاذاعه مقفوله من قبل المطور الاساسي  🚶" 
end
redis:setex(veer..'fwd:all'..msg.sender_user_id_,300, true) 
return "📭¦ حسننا الان ارسل الكليشه للاذاعه عام \n🔛" 
end

if MsgText[1] == "اذاعه خاص" or MsgText[1] == "اذاعه خاص 👤" then		
if not msg.SudoUser then return "📛*¦* هذا الامر يخص {المطور} فقط  \n🚶" end
if not msg.SudoBase and not redis:get(veer..'lock_brod') then 
return "📡*¦* الاذاعه مقفوله من قبل المطور الاساسي  🚶" 
end
redis:setex(veer..'fwd:pv'..msg.sender_user_id_,300, true) 
return "📭¦ حسننا الان ارسل الكليشه للاذاعه خاص \n🔛"
end

if MsgText[1] == "اذاعه" or MsgText[1] == "اذاعه 👥" then		
if not msg.SudoUser then return"📛*¦* هذا الامر يخص {المطور} فقط  \n🚶" end
if not msg.SudoBase and not redis:get(veer..'lock_brod') then 
return "📡*¦* الاذاعه مقفوله من قبل المطور الاساسي  🚶" 
end
redis:setex(veer..'fwd:groups'..msg.sender_user_id_,300, true) 
return "📭¦ حسننا الان ارسل الكليشه للاذاعه للمجموعات \n🔛" 
end

if MsgText[1] == "المطورين" or MsgText[1] == "المطورين 🕹" then
if not msg.SudoUser then return"📛*¦* هذا الامر يخص {المطور} فقط  \n🚶" end
return sudolist(msg) 
end
 
if MsgText[1] == "قائمه العام" or MsgText[1]=="قائمه العام 📜" then 
if not msg.SudoUser then return"📛*¦* هذا الامر يخص {المطور} فقط  \n🚶" end
return GetListGeneralBanned(msg) 
end

if MsgText[1] == "تعطيل" and (MsgText[2] == "التواصل" or MsgText[2]=="التواصل ✖️") then 
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
return lock_twasel(msg) 
end

if MsgText[1] == "تفعيل" and (MsgText[2] == "التواصل" or MsgText[2]=="التواصل 🔛") then 
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
return unlock_twasel(msg) 
end

if MsgText[1] == "حظر عام" then
if not msg.SudoBase then return "📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end

if not MsgText[2] and msg.reply_id then 
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
if UserID == our_id then   
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر البوت\n🛠") 
elseif UserID == SUDO_ID then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر المطور الاساسي\n🛠")
elseif redis:sismember(veer..':SUDO_BOT:',UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر المطور\n🛠") 
end
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME)
if GeneralBanned(arg.UserID) then 
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..USERNAME..' \n🎫*¦* الايدي » (`'..arg.UserID..'`)\n🛠*¦*  تم بالتأكيد حظره عام \n✓️') 
else
redis:hset(veer..'username:'..arg.UserID,'username',USERNAME)
redis:sadd(veer..'gban_users',arg.UserID)
kick_user(arg.UserID,arg.ChatID)
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم حظره عام \n✓️',12,utf8.len(USERNAME)) 
end
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
end
if MsgText[2] and MsgText[2]:match('@[%a%d_]+') then 
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
local UserID = data.id_
UserName = Flter_Markdown(arg.UserName)

if UserID == our_id then   
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر البوت\n🛠") 
elseif UserID == SUDO_ID then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر المطور الاساسي\n🛠")
elseif redis:sismember(veer..':SUDO_BOT:',UserID) then 
return sendMsg(arg.ChatID,arg.MsgID,"👤*¦* لا يمكنك حظر المطور\n🛠") 
end
if redis:sismember(veer..'gban_users',UserID) then 
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تم بالتأكيد حظره عام \n✓️') 
else
redis:hset(veer..'username:'..UserID,'username',UserName)
redis:sadd(veer..'gban_users',UserID)
kick_user(UserID,arg.ChatID)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تم حظره عام \n✓️')
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
end 
if MsgText[2] and MsgText[2]:match('^%d+$') then 
GetUserID(MsgText[2],action_by_id,{msg=msg,cmd="bandall"}) 
end
return false
end

if MsgText[1] == "الغاء العام" or MsgText[1] == "الغاء عام" then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end

if not MsgText[2] and msg.reply_id then 
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.sender_user_id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* عذرا هذا العضو ليس موجود ضمن المجموعات \n❕") end
local UserID = data.sender_user_id_
GetUserID(UserID,function(arg,data)
USERNAME = ResolveUserName(data)
USERNAME = USERNAME:gsub([[\_]],"_")
USERCAR = utf8.len(USERNAME)
if GeneralBanned(arg.UserID) then 
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم الغاء حظره العام \n✓️',12,utf8.len(USERNAME)) 
redis:srem(veer..'gban_users',arg.UserID)
else
SendMention(arg.ChatID,arg.UserID,arg.MsgID,'👤¦ العضو » '..USERNAME..' \n🎫¦ الايدي » {'..arg.UserID..'}\n🛠¦ تم بالتأكيد الغاء حظره العام \n✓️',12,utf8.len(USERNAME))
end
end,{ChatID=arg.ChatID,UserID=UserID,MsgID=arg.MsgID})
end,{ChatID=msg.chat_id_,MsgID=msg.id_})
end
if MsgText[2] and MsgText[2]:match('^%d+$') then 

end
if MsgText[2] and MsgText[2]:match('@[%a%d_]+') then 
GetUserName(MsgText[2],function(arg,data)
if not data.id_ then return sendMsg(arg.ChatID,arg.MsgID,"📛*¦* لآ يوجد عضـو بهہ‌‏ذآ آلمـعرف \n❕") end 
local UserID = data.id_
UserName = Flter_Markdown(arg.UserName)
if not redis:sismember(veer..'gban_users',UserID) then 
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦* تم بالتأكيد الغاء حظره العام \n✓️') 
else
redis:srem(veer..'gban_users',UserID)
sendMsg(arg.ChatID,arg.MsgID,'👤*¦* العضو » '..UserName..' \n🎫*¦* الايدي » (`'..UserID..'`)\n🛠*¦*  تم الغاء حظره العام \n✓️')
end
end,{ChatID=msg.chat_id_,MsgID=msg.id_,UserName=MsgText[2]})
end 
return false
end 

if MsgText[1] == "رتبتي" then return '🎫*¦* رتبتك » '..msg.TheRank..'\n➖' end

----------------- استقبال الرسائل ---------------
if MsgText[1] == "الغاء الامر ✖️" or MsgText[1] == "الغاء" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
redis:del(veer..'welcom:witting'..msg.sender_user_id_,
veer..'rulse:witting'..msg.sender_user_id_,
veer..'rulse:witting'..msg.sender_user_id_,
veer..'name:witting'..msg.sender_user_id_,
veer..'about:witting'..msg.sender_user_id_,
veer..'fwd:all'..msg.sender_user_id_,
veer..'fwd:pv'..msg.sender_user_id_,
veer..'fwd:groups'..msg.sender_user_id_,
veer..'fwd:number'..msg.sender_user_id_,
veer..'fwd:groupsveer'..msg.sender_user_id_,
veer..':ForceSub:'..msg.sender_user_id_,
veer..'namebot:witting'..msg.sender_user_id_,
veer..'addrd_all:'..msg.sender_user_id_,
veer..'delrd:'..msg.sender_user_id_,
veer..'addrd:'..msg.sender_user_id_,
veer..'delrdall:'..msg.sender_user_id_,
veer..'text_sudo:witting'..msg.sender_user_id_,
veer..'addrd:'..msg.chat_id_..msg.sender_user_id_,
veer..'addrd_all:'..msg.chat_id_..msg.sender_user_id_,
veer..'CHENG:ID'..msg.chat_id_..msg.sender_user_id_)
return '📬*¦* تم آلغآء آلآمـر بنجآح \n🌿'
end  

if (MsgText[1] == '/files' or MsgText[1]== "الملفات 🗂" or MsgText[1]== "الملفات" ) then
if not msg.SudoBase then return "📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
return All_File()
end   

if MsgText[1] == 'نسخه احتياطيه للمجموعات' or MsgText[1] == "نسخه احتياطيه للمجموعات 📦" then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
return buck_up_groups(msg)
end 

if MsgText[1] == 'رفع نسخه الاحتياطيه' then
if not msg.SudoBase then return "📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
if msg.reply_id then
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg, data)
if data.content_.ID == 'MessageDocument' then
local file_name = data.content_.document_.file_name_
if file_name:match('.json')then
if file_name:match('@[%a%d_]+.json') then
if file_name:lower():match('@[%a%d_]+') == Bot_User:lower() then 
io.popen("rm -f ../.telegram-cli/data/document/*")
local file_id = data.content_.document_.document_.id_ 
tdcli_function({ID = "DownloadFile",file_id_ = file_id},function(arg, data) 
if data.ID == "Ok" then
Uploaded_Groups_Ok = true
Uploaded_Groups_CH = arg.chat_id_
Uploaded_Groups_MS = arg.id_
print(Uploaded_Groups_CH)
print(Uploaded_Groups_MS)
sendMsg(arg.chat_id_,arg.id_,'⏳*¦* جاري رفع النسخه انتظر قليلا ... \n⌛️')
end
end,{chat_id_=arg.chat_id_,id_=arg.id_})
else 
sendMsg(arg.chat_id_,arg.id_,"📛*¦* عذرا النسخه الاحتياطيه هذا ليست للبوت » ["..Bot_User.."]  \n❕")
end
else 
sendMsg(arg.chat_id_,arg.id_,'📛*¦* عذرا اسم الملف غير مدعوم للنظام او لا يتوافق يرجى جلب الملف الاصلي الذي قمت بسحبه وبدون تعديل ع الاسم\n❕')
end  
else
sendMsg(arg.chat_id_,arg.id_,'📛*¦* عذرا الملف ليس بصيغه Json !?\n❕')
end 
else
sendMsg(arg.chat_id_,arg.id_,'📛*¦* عذرا هذا ليس ملف النسحه الاحتياطيه للمجموعات\n❕')
end 
end,{chat_id_=msg.chat_id_,id_=msg.id_})
else 
return "📦*¦* ارسل ملف النسخه الاحتياطيه اولا\n📑*¦* ثم قم بالرد على الملف وارسل \" `رفع نسخه الاحتياطيه` \" "
end 
return false
end

if (MsgText[1]=="تيست" or MsgText[1]=="test") then 
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
return "💯 البوت شـغــال 🚀" 
end

if (MsgText[1]== "ايدي" or MsgText[1]=="ايدي 🆔") and msg.type == "pv" then return  "\n`"..msg.sender_user_id_.."`\n"  end

if (MsgText[1]== "الاحصائيات 📈" or MsgText[1]=="الاحصائيات") then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
return 'الاحصائيات : 📈 \n\n👥*¦* عدد المجموعات المفعله : '..redis:scard(veer..'group:ids')..'\n👤*¦* عدد المشتركين في البوت : '..redis:scard(veer..'users')..'\n📡'
end
---------------[End Function data] -----------------------
if MsgText[1]=="اضف رد عام" or MsgText[1]=="اضف رد عام ➕" then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
redis:setex(veer..'addrd_all:'..msg.chat_id_..msg.sender_user_id_,300,true)
redis:del(veer..'allreplay:'..msg.chat_id_..msg.sender_user_id_)
return "📭¦ حسننا الان ارسل كلمة الرد العام 🍃\n"
end

if MsgText[1]== 'مسح' and MsgText[2]== 'الردود' then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
local names 	= redis:exists(veer..'replay:'..msg.chat_id_)
local photo 	= redis:exists(veer..'replay_photo:group:'..msg.chat_id_)
local voice 	= redis:exists(veer..'replay_voice:group:'..msg.chat_id_)
local imation   = redis:exists(veer..'replay_animation:group:'..msg.chat_id_)
local audio	 	= redis:exists(veer..'replay_audio:group:'..msg.chat_id_)
local sticker 	= redis:exists(veer..'replay_sticker:group:'..msg.chat_id_)
local video 	= redis:exists(veer..'replay_video:group:'..msg.chat_id_)
if names or photo or voice or imation or audio or sticker or video then
redis:del(veer..'replay:'..msg.chat_id_,
veer..'replay_photo:group:'..msg.chat_id_,
veer..'replay_voice:group:'..msg.chat_id_,
veer..'replay_animation:group:'..msg.chat_id_,
veer..'replay_audio:group:'..msg.chat_id_,
veer..'replay_sticker:group:'..msg.chat_id_,
veer..'replay_video:group:'..msg.chat_id_,
veer..':caption_replay:'..msg.chat_id_)
return "✓ تم مسح كل الردود 🚀"
else
return '🚸*¦* لا يوجد ردود ليتم مسحها \n❕'
end
end

if MsgText[1]== 'مسح' and MsgText[2]== 'الردود العامه' then
if not msg.SudoBase then return"♨️ للمطورين فقط ! 💯" end
local names 	= redis:exists(veer..'replay:all')
local photo 	= redis:exists(veer..'replay_photo:group:')
local voice 	= redis:exists(veer..'replay_voice:group:')
local imation 	= redis:exists(veer..'replay_animation:group:')
local audio 	= redis:exists(veer..'replay_audio:group:')
local sticker 	= redis:exists(veer..'replay_sticker:group:')
local video 	= redis:exists(veer..'replay_video:group:')
if names or photo or voice or imation or audio or sticker or video then
redis:del(veer..'replay:all',
veer..'replay_photo:group:',
veer..'replay_voice:group:',
veer..'replay_animation:group:',
veer..'replay_audio:group:',
veer..'replay_sticker:group:',
veer..'replay_video:group:',
veer..':caption_replay_All:')
return "✓ تم مسح كل الردود العامه🚀"
else
return "لا يوجد ردود عامه ليتم مسحها ! 🚀"
end
end

if MsgText[1]== 'مسح' and MsgText[2]== 'رد عام' or MsgText[2]=="رد عام ➖"  then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
redis:set(veer..'delrdall:'..msg.sender_user_id_,true) 
return "📭¦ حسننا عزيزي  ✋🏿\n🗯¦ الان ارسل الرد لمسحها من  المجموعات 🍃"
end

if MsgText[1]== 'مسح' and MsgText[2]== 'رد' then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
redis:set(veer..'delrd:'..msg.sender_user_id_,true)
return "📭¦ حسننا عزيزي  ✋🏿\n🗯¦ الان ارسل الرد لمسحها من  للمجموعه 🍃"
end

if MsgText[1]== 'الردود' then

if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
local names  	= redis:hkeys(veer..'replay:'..msg.chat_id_)
local photo 	= redis:hkeys(veer..'replay_photo:group:'..msg.chat_id_)
local voice  	= redis:hkeys(veer..'replay_voice:group:'..msg.chat_id_)
local imation 	= redis:hkeys(veer..'replay_animation:group:'..msg.chat_id_)
local audio 	= redis:hkeys(veer..'replay_audio:group:'..msg.chat_id_)
local sticker 	= redis:hkeys(veer..'replay_sticker:group:'..msg.chat_id_)
local video 	= redis:hkeys(veer..'replay_video:group:'..msg.chat_id_)
if #names==0 and #photo==0 and #voice==0 and #imation==0 and #audio==0 and #sticker==0 and #video==0 then 
return '🚸*¦* لا يوجد ردود مضافه حاليا \n❕' 
end
local ii = 1
local message = '💬*¦* ردود البوت في المجموعه  :\n\n'
for i=1, #photo 	do message = message ..ii..' - *{* '..	photo[i]..' *}_*( صوره 🏞 ) \n' 	 ii = ii + 1 end
for i=1, #names 	do message = message ..ii..' - *{* '..	names[i]..' *}_*( نص 🗯 ) \n'  	 ii = ii + 1 end
for i=1, #voice 	do message = message ..ii..' - *{* '..  voice[i]..' *}_*( بصمه 🎙 ) \n' 	 ii = ii + 1 end
for i=1, #imation 	do message = message ..ii..' - *{* '..imation[i]..' *}_*( متحركه 🎭 ) \n' ii = ii + 1 end
for i=1, #audio 	do message = message ..ii..' - *{* '..	audio[i]..' *}_*( صوتيه 🔊 ) \n'  ii = ii + 1 end
for i=1, #sticker 	do message = message ..ii..' - *{* '..sticker[i]..' *}_*( ملصق 🗺 ) \n' 	 ii = ii + 1 end
for i=1, #video 	do message = message ..ii..' - *{* '..	video[i]..' *}_*( فيديو  🎞 ) \n' ii = ii + 1 end
message = message..'\n➖➖➖'
if utf8.len(message) > 4096 then
return "📛| لا يمكن عرض الردود بسبب القائمه كبيره جدا ."
else
return message
end
end

if MsgText[1]== 'الردود العامه' or MsgText[1]=='الردود العامه 🗨' then
if not msg.SudoBase then return "♨️ للمطور فقط ! 💯" end
local names 	= redis:hkeys(veer..'replay:all')
local photo 	= redis:hkeys(veer..'replay_photo:group:')
local voice 	= redis:hkeys(veer..'replay_voice:group:')
local imation 	= redis:hkeys(veer..'replay_animation:group:')
local audio 	= redis:hkeys(veer..'replay_audio:group:')
local sticker 	= redis:hkeys(veer..'replay_sticker:group:')
local video 	= redis:hkeys(veer..'replay_video:group:')
if #names==0 and #photo==0 and #voice==0 and #imation==0 and #audio==0 and #sticker==0 and #video==0 then 
return '🚸*¦* لا يوجد ردود مضافه حاليا \n❕' 
end
local ii = 1
local message = '💬*¦* الردود العامه في البوت :   :\n\n'
for i=1, #photo 	do message = message ..ii..' - *{* '..	photo[i]..' *}_*( صوره 🏞 ) \n' 	ii = ii + 1 end
for i=1, #names 	do message = message ..ii..' - *{* '..	names[i]..' *}_*( نص 🗯 ) \n'  	ii = ii + 1 end
for i=1, #voice 	do message = message ..ii..' - *{* '..	voice[i]..' *}_*( بصمه 🎙 ) \n' 	ii = ii + 1 end
for i=1, #imation 	do message = message ..ii..' - *{* '..imation[i]..' *}_*( متحركه 🎭 ) \n'ii = ii + 1 end
for i=1, #audio 	do message = message ..ii..' - *{* '..	audio[i]..' *}_*( صوتيه 🔊 ) \n' ii = ii + 1 end
for i=1, #sticker 	do message = message ..ii..' - *{* '..sticker[i]..' *}_*( ملصق 🗺 ) \n' 	ii = ii + 1 end
for i=1, #video 	do message = message ..ii..' - *{* '..	video[i]..' *}_*( فيديو  🎞 ) \n'ii = ii + 1 end
message = message..'\n➖➖➖'
if utf8.len(message) > 4096 then
return "📛| لا يمكن عرض الردود بسبب القائمه كبيره جدا ."
else
return message
end
end


if MsgText[1]=="اضف رد" and msg.GroupActive then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
redis:setex(veer..'addrd:'..msg.chat_id_..msg.sender_user_id_,300,true) 
redis:del(veer..'replay1'..msg.chat_id_..msg.sender_user_id_)
return "📭¦ حسننا , الان ارسل كلمه الرد \n-"
end

if MsgText[1] == "ضع اسم للبوت" or MsgText[1]== 'ضع اسم للبوت ©' then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
redis:setex(veer..'namebot:witting'..msg.sender_user_id_,300,true)
return"📭¦ حسننا عزيزي  ✋🏿\n🗯¦ الان ارسل الاسم  للبوت 🍃"
end

if MsgText[1] == 'server' then
if not msg.SudoUser then return "📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
return io.popen([[

linux_version=`lsb_release -ds 2>/dev/null || cat /etc/*release 2>/dev/null | head -n1 || uname -om`
memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
ISP=`curl https://veer.saied.us/ISP.php`
uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`

echo '📟 •⊱ { Seystem } ⊰•\n*»» '"$linux_version"'*' 
echo '*------------------------------\n*🔖 •⊱ { Memory } ⊰•\n*»» '"$memUsedPrc"'*'
echo '*------------------------------\n*💾 •⊱ { HardDisk } ⊰•\n*»» '"$HardDisk"'*'
echo '*------------------------------\n*⚙️ •⊱ { Processor } ⊰•\n*»» '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
echo '*------------------------------\n*📡 •⊱ { Location } ⊰•\n*»» ]]..DataCenter..[[*'
echo '*------------------------------\n*🛠l •⊱ { ISP } ⊰•\n*»» '"$ISP"'*'
echo '*------------------------------\n*👨🏾‍🔧 •⊱ { Server[_]Login } ⊰•\n*»» '`whoami`'*'
echo '*------------------------------\n*🔌 •⊱ { Uptime } ⊰•  \n*»» '"$uptime"'*'
]]):read('*all')
end


if MsgText[1] == 'السيرفر' or MsgText[1] == "السيرفر 📟" then
if not msg.SudoUser then return "📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
return io.popen([[

linux_version=`lsb_release -ds`
memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
ISP=`curl https://veer.saied.us/ISP.php`
uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`

echo '📟l •⊱ { نظام التشغيل } ⊰•\n*»» '"$linux_version"'*' 
echo '*------------------------------\n*🔖l •⊱ { الذاكره العشوائيه } ⊰•\n*»» '"$memUsedPrc"'*'
echo '*------------------------------\n*💾l •⊱ { وحـده الـتـخـزيـن } ⊰•\n*»» '"$HardDisk"'*'
echo '*------------------------------\n*⚙️l •⊱ { الـمــعــالــج } ⊰•\n*»» '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
echo '*------------------------------\n*📡l •⊱ { موقـع الـسـيـرفـر } ⊰•\n*»» ]]..DataCenter..[[*'
echo '*------------------------------\n*🛠l •⊱ { مـزود الـخـدمـة } ⊰•\n*»» '"$ISP"'*'
echo '*------------------------------\n*👨🏾‍🔧l •⊱ { الــدخــول } ⊰•\n*»» '`whoami`'*'
echo '*------------------------------\n*🔌l •⊱ { مـده تـشغيـل الـسـيـرفـر } ⊰•  \n*»» '"$uptime"'*'
]]):read('*all')
end


if msg.type == 'channel' and msg.GroupActive then
if MsgText[1] == "الاوامر" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
SUDO_USER = redis:hgetall(veer..'username:'..SUDO_ID).username
if SUDO_USER:match('@[%a%d_]+') then 
SUDO_USER = " ‏‎‏❋¦ رآسـلني للآسـتفسـآر ☜ { "..SUDO_USER.." } ✓ "
else
SUDO_USER = ""
end
return [[
      ❂

 قامهہ‏ الاوامر ‏ ⇊

👨‍⚖️¦ م1 » آوآمـر آلآدآرهہ‏‏
📟¦ م2 » آوآمـر آعدآدآت آلمـجمـوعهہ‏‏
🛡¦ م3 » آوآمـر آلحمـآيهہ‏‏
🕹¦ م المطور »  آوآمـر آلمـطـور
⚡️¦ اوامر الرد » لآضـآفهہ‏‏ رد مـعين
📁¦ اوامر الملفات » لآدآرهہ‏‏ مــلفآت آلبوت

➖➖➖➖➖➖➖
]]..SUDO_USER
end
if MsgText[1]== 'م1' then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
SUDO_USER = redis:hgetall(veer..'username:'..SUDO_ID).username
if SUDO_USER:match('@[%a%d_]+') then 
SUDO_USER = "🗯*¦* راسلني للاستفسار 💡↭  "..SUDO_USER
else
SUDO_USER = ""
end
local text =[[
•⊱ {  آوآمر الرفع والتنزيل  } ⊰•


🔮¦ رفع منشى ‿ تنزيل منشى 
⚗¦ رفع المدير ‿ تنزيل المدير
📿¦ رفع ادمن ‿ تنزيل ادمن 
💈¦ رفع مميز ‿ تنزيل مميز 

⦅ ꯭آو꯭آم꯭ـر آ꯭لم꯭ـس꯭ـح꯭ للم꯭ـنش꯭ـى꯭ ⦆

🗑¦ مسح الادمنيه •⊱ لمسح الادمنيه 
🗑¦ مسح المميزين •⊱ لمسح الاعضاء المميزين 
🗑¦ مسح المدراء •⊱ لمسح المدراء 

⦅آوآمـر آلحظـر وآلطــرد وآلتقييـد  ⦆
      
🔱¦ حظر (بالرد/بالمعرف) •⊱ لحظر العضو
⚜¦ طرد ( بالرد/بالمعرف) •⊱ لطرد العضو 
🔅¦ كتم (بالرد/بالمعرف) •⊱ لكتم العضو 
🌀¦ تقييد (بالرد/بالمعرف) •⊱ لتقييد العضو
🚫¦ منع + الكلمه •⊱ لمنع كلمه داخل المجموعه
🚸¦ الغاء الحظر (بالرد/بالمعرف) •⊱ لالغاء الحظر 
🔆¦ الغاء الكتم (بالرد/بالمعرف) •⊱ لالغاء الكتم 
〰¦ فك التقييد (بالرد/بالمعرف) •⊱ لالغاء تقييد العضو 
⭕️¦ الغاء منع •⊱ لالغاء منع الكلمه بالمجموعه
📮¦ طرد البوتات : لطرد كل البوتات
📛¦ طرد المحذوفين : لطرد الحسابات المحذوفه
📟¦ كشف البوتات : لاضهار عدد البوتات الموجوده
➖➖➖➖➖➖➖
]]..SUDO_USER
sendMsg(msg.chat_id_,msg.id_,text)
return false

end
if MsgText[1]== 'م2' then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
SUDO_USER = redis:hgetall(veer..'username:'..SUDO_ID).username
if SUDO_USER:match('@[%a%d_]+') then 
SUDO_USER = "🗯*¦* راسلني للاستفسار 💡↭  "..SUDO_USER
else
SUDO_USER = ""
end
local text = [[
👨🏽‍✈️¦  اوامر الوضع للمجموعه ::

📮¦ـ➖➖➖➖➖
💭¦ ضع الترحيب  ↜ لوضع ترحيب  
💭¦ ضع القوانين :↜ لوضع القوانين 
💭¦ ضع وصف :↜ لوضع وصف  
💭¦ ضـع رابط :↜ لوضع الرابط  
💭¦ الـرابـط :↜  لعرض الرابط  
💭¦ تاك للكل : لنداء الاعضاء
💭¦ كلهم + النص : لنداء الاعضاء مع رسالة مخصصة
📮¦ـ➖➖➖➖➖

👨🏽‍💻¦  اوامر رؤية الاعدادات ::

🗯¦ القوانين : لعرض  القوانين 
🗯¦ الادمنيه : لعرض  الادمنيه 
🗯¦ المنشئين : لعرض  المنشئين
🗯¦ المدراء : لعرض  الاداريين 
🗯¦ المكتومين :↜لعرض  المكتومين 
🗯¦ المطور : لعرض معلومات المطور 
🗯¦ معلوماتي :↜لعرض معلوماتك  
🗯¦ الحمايه : لعرض كل الاعدادات  
🗯¦ الوسائط : لعرض اعدادات الميديا 
🗯¦ الاعدادات : لعرض اعدادات المجموعه 
🗯¦ المجموعه : لعرض معلومات المجموعه 

➖➖➖➖➖➖➖
]]..SUDO_USER
sendMsg(msg.chat_id_,msg.id_,text)
return false
end
if MsgText[1]== 'م3' then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
SUDO_USER = redis:hgetall(veer..'username:'..SUDO_ID).username
if SUDO_USER:match('@[%a%d_]+') then 
SUDO_USER = "🗯*¦* راسلني للاستفسار 💡↭  "..SUDO_USER
else
SUDO_USER = ""
end
local text = [[

⚡️ اوامر حماية المجموعه ⚡️
🗯*¦*ـ➖➖➖➖
🗯*¦* قفل «» فتح •⊱ التعديل  ⊰•
🗯*¦*️ قفل «» فتح •⊱ البصمات ⊰•
🗯*¦* قفل «» فتح •⊱ الــفيديو ⊰•
🗯*¦* قفل «» فتح •⊱ الفيديو ⊰•
🗯*¦* قفل «» فتح •⊱ الـصــور ⊰•
🗯*¦* قفل «» فتح •⊱ الملصقات ⊰•

🗯*¦* قفل «» فتح •⊱ المتحركه ⊰•
🗯*¦* قفل «» فتح •⊱ الدردشه ⊰•

🗯*¦* قفل «» فتح •⊱ الروابط ⊰•
🗯*¦* قفل «» فتح •⊱ التاك ⊰•
🗯*¦* قفل «» فتح •⊱ البوتات ⊰•
🗯*¦* ️قفل «» فتح •⊱ المعرفات ⊰•
🗯*¦* قفل «» فتح •⊱ البوتات بالطرد ⊰•
🗯*¦* قفل «» فتح •⊱ الكلايش ⊰•
🗯*¦*️ قفل «» فتح •⊱ التكرار ⊰•
🗯*¦* قفل «» فتح •⊱ التوجيه ⊰•
🗯*¦* قفل «» فتح •⊱ الانلاين ⊰•
🗯*¦* قفل «» فتح •⊱ الدخول ⊰•

🗯*¦* قفل «» فتح •⊱ الجهات ⊰•
🗯*¦* قفل «» فتح •⊱ الــكـــل ⊰•
🔅*¦*ـ➖➖➖➖➖
📲*¦* قفل «» فتح •⊱ التوجيه بالتقييد ⊰•
🔗*¦* قفل «» فتح •⊱ الروابط بالتقييد ⊰•
📀*¦* قفل «» فتح •⊱ المتحركه بالتقييد ⊰•
📸*¦* قفل «» فتح •⊱ الصور بالتقييد ⊰•
📽*¦* قفل «» فتح •⊱ الفيديو بالتقييد ⊰•
🔅*¦*ـ➖➖➖➖➖
📌*¦* تفعيل «» تعطيل •⊱  الترحيب ⊰•

🗯*¦* تفعيل «» تعطيل •⊱  الردود ⊰•
📢*¦* تفعيل «» تعطيل •⊱  التحذير ⊰•
🗨*¦* تفعيل «» تعطيل •⊱  الايدي ⊰•
🗨*¦* تفعيل «» تعطيل •⊱ الايدي بالصوره ⊰•
🔅*¦*ـ➖➖➖➖➖

]]..SUDO_USER
sendMsg(msg.chat_id_,msg.id_,text)
return false
end
if MsgText[1]== "م المطور" then
if not msg.SudoBase then return "🔅¦ للمطور الاساسي فقط  🎖" end
SUDO_USER = redis:hgetall(veer..'username:'..SUDO_ID).username
if SUDO_USER:match('@[%a%d_]+') then 
SUDO_USER = "🗯*¦* راسلني للاستفسار 💡↭  "..SUDO_USER
else
SUDO_USER = ""
end
local text = [[
📌¦ اوامر المطور 🃏
🔅¦ـ➖➖➖➖➖
🔅¦ تفعيل : لتفعيل البوت 
🔅¦ تعطيل : لتعطيل البوت 
🔅¦ اسم بوتك + غادر : لطرد البوت
🔅¦ مسح الادمنيه : لمسح الادمنيه 
🔅¦ مسح المميزين : لمسح الاعضاء المميزين 
🔅¦ مسح المدراء : لمسح المدراء 
🔅¦ مسح المطورين : لمسح كل المطورين

🔅¦ اذاعه : لنشر رساله لكل المجموعات
🔅¦ اذاعه بالتوجيه : لنشر منشور بالتوجيه لكل المجموعات
🔅¦ اذاعه خاص : لنشر رساله لكل المشتركين خاص
🔅¦ اذاعه خاص بالتوجيه : لنشر منشور بالتوجيه لكل المشتركين خاص
🔅¦ اذاعه عام : لنشر رساله لكل المجموعات والخاص
🔅¦ اذاعه عام بالتوجيه : لنشر منشور بالتوجيه لكل المجموعات والخاص

🔅¦ تنظيف المشتركين : لتصفية عدد مشتركين البوت وحذف الوهمي
🔅¦ تنظيف المجموعات : لتصفية عدد مجموعات البوت وحذف الوهمي
🔅¦ تنظيف الوهمي : لتصفية عدد المجموعات والمشتركين في البوت وحذف الوهمي

🔅¦ـ➖➖➖➖➖

]]..SUDO_USER
sendMsg(msg.chat_id_,msg.id_,text)
return false
end
if MsgText[1]== 'اوامر الرد' then
if not msg.Director then return "📛*¦* هذا الامر يخص {المطور,المنشئ,المدير} فقط  \n🚶" end
SUDO_USER = redis:hgetall(veer..'username:'..SUDO_ID).username
if SUDO_USER:match('@[%a%d_]+') then 
SUDO_USER = "🗯*¦* راسلني للاستفسار 💡↭  "..SUDO_USER
else
SUDO_USER = ""
end
local text = [[
🗯¦ جميع اوامر الردود 
🔅¦ـ➖➖➖➖➖
🔅¦ الردود : لعرض الردود المثبته
🔅¦ اضف رد : لأضافه رد جديد
🔅¦ مسح رد  الرد المراد مسحه
🔅¦ مسح الردود : لمسح كل الردود
🔅¦ اضف رد عام : لاضافه رد لكل المجموعات
🔅¦ مسح رد عام : لمسح الرد العام 
🔅¦ مسح الردود العامه : لمسح كل ردود العامه
🔅¦ـ➖➖➖➖➖
]]..SUDO_USER
sendMsg(msg.chat_id_,msg.id_,text)
return false
end
 if MsgText[1]== "اوامر الملفات" then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
local text = [[
🤖¦ •⊱ { آوآمر آلملفآت } ⊰•

🗓¦ `/files`  لعرض قائمه الملفات 
📑¦ `/Store`  لعرض متجر الملفات 
📨¦ sp + الاسم | لارسال الملف اليك 
📮¦ dp + اسم الملف المراد حذفه 
]]
sendMsg(msg.chat_id_,msg.id_,text)
return false
end

if MsgText[1] == "تفعيل" and MsgText[2] == "اطردني"  then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
if not redis:get(veer..'lave_me'..msg.chat_id_) then 
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."\n📡*¦* المغادره بالتاكيد تم تفعيلها\n✓" 
else 
redis:del(veer..'lave_me'..msg.chat_id_) 
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."\n📡*¦* تم تفعيل المغادره \n✓" 
end 
end
if MsgText[1] == "تعطيل" and MsgText[2] == "اطردني" then
if not msg.Admin then return "📛*¦* هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  \n🚶" end
if redis:get(veer..'lave_me'..msg.chat_id_) then 
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."\n📡*¦* المغادره من قبل البوت بالتأكيد معطله\n✓" 
else
redis:set(veer..'lave_me'..msg.chat_id_,true)  
return "🙋🏼‍♂️*¦* أهلا عزيزي "..msg.TheRankCmd.."\n📡*¦* تم تعطيل المغادره من قبل البوت\n✓" 
end   
end

if MsgText[1] == "مغادره" or MsgText[1] == "ادفرني" or MsgText[1] == "احظرني" or MsgText[1] == "اطردني" then
if not redis:get(veer..'lave_me'..msg.chat_id_) then
if msg.Admin then return "📛*¦* لا استطيع طرد المدراء والادمنيه والمنشئين  \n🚶" end
kick_user(msg.sender_user_id_,msg.chat_id_,function(arg,data)
if data.ID == "Ok" then
StatusLeft(msg.chat_id_,msg.sender_user_id_)
send_msg(msg.sender_user_id_,"👨🏼‍⚕️| اهلا عزيزي , لقد تم طردك من المجموعه بامر منك \n🔖| اذا كان هذا بالخطأ او اردت الرجوع للمجموعه \n\n🔖¦فهذا رابط المجموعه 💯\n🌿¦"..Flter_Markdown(redis:get(veer..'group:name'..msg.chat_id_)).." :\n\n["..redis:get(veer..'linkGroup'..msg.chat_id_).."]\n")
sendMsg(msg.chat_id_,msg.id_,"🚸| لقد تم طردك بنجاح , ارسلت لك رابط المجموعه في الخاص اذا وصلت لك تستطيع الرجوع متى شئت ")
else
sendMsg(msg.chat_id_,msg.id_,"🚸| لا استطيع طردك لانك مشرف في المجموعه  ")
end
end)
return false
end
end
end


if MsgText[1] == "شغال" then
return [[
نعــم 👌🏻💯
 🇸🇦 
]]
end

if MsgText[1] == "متجر الملفات" or MsgText[1]:lower() == "/store"  then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
local Get_Files, res = https.request("https://raw.githubusercontent.com/VeerCli/veerbot/master/GetFiles.json")
if res == 200 then
local Get_info, res = pcall(JSON.decode,Get_Files);
if Get_info then
local TextS = res.IinFormation.Text_Msg
local TextE = res.IinFormation.BorderBy
local NumFile = 0
for name,Course in pairs(res.Plugins) do
local Check_File_is_Found = io.open("plugins/"..name,"r")
if Check_File_is_Found then
io.close(Check_File_is_Found)
CeckFile = "{✓}"
else
CeckFile = "{✖️}"
end
--[[
#  ▄█    █▄     ▄████████    ▄████████    ▄████████  Channel : @VeerCli 
# ███    ███   ███    ███   ███    ███   ███    ███ 
# ███    ███   ███    █▀    ███    █▀    ███    ███ 
# ███    ███  ▄███▄▄▄      ▄███▄▄▄      ▄███▄▄▄▄██▀  Bot : @VeerCliBot
# ███    ███ ▀▀███▀▀▀     ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   
# ███    ███   ███    █▄    ███    █▄  ▀███████████ Dev : @RSAIED and @YYBYY
# ███    ███   ███    ███   ███    ███   ███    ███ 
# ▀██████▀    ██████████   ██████████   ███    ███  By Source Veer
#                                       ███    ███ 
#------------------------------------------------------
]]
NumFile = NumFile + 1
TextS = TextS..NumFile.."- `"..name..'` » '..CeckFile..'\nl*»»* [{تفاصيل اكثر}]('..Course..")\n------------------------------------\n"
end
return TextS..TextE
else
return "📛| اوبس , هناك خطأ في مصفوفه الجيسون راسل مطور السورس ليتمكن من حل المشكله في اسرع وقت ممكن.!"
end
else
return "📛| اوبس , لا يوجد اتصال في الـapi راسل المطور ليتم حل المشكله في اسرع وقت ممكن.!"
end
return false
end

if MsgText[1]:lower() == "sp" and MsgText[2] then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
local FileName = MsgText[2]:lower()
local Check_File_is_Found = io.open("plugins/"..FileName,"r")
if Check_File_is_Found then
io.close(Check_File_is_Found)
TText = "📑| الملف موجود بالفعل \n🔖| تم تحديث الملف  \n✓"
else
TText = "🔖| تم تثبيت وتفعيل الملف بنجاح \n✓"
end
local Get_Files, res = https.request("https://raw.githubusercontent.com/VeerCli/veerbot/master/plugins/"..FileName)
if res == 200 then
print("DONLOADING_FROM_URL: "..FileName)
local FileD = io.open("plugins/"..FileName,'w+')
FileD:write(Get_Files)
FileD:close()
Start_Bot()

return TText
else
return "📛| لا يوجد ملف بهذا الاسم في المتجر \n✖️"
end
end

if MsgText[1]:lower() == "dp" and MsgText[2] then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
local FileName = MsgText[2]:lower()
local Check_File_is_Found = io.open("plugins/"..FileName,"r")
if Check_File_is_Found then
io.close(Check_File_is_Found)
os.execute("rm -fr plugins/"..FileName)
TText = "📑| الملف ~⪼ ["..FileName.."] \n🔖| تم حذفه بنجاح  \n✓"
else
TText = "📑| الملف ~⪼ ["..FileName.."] \n🔖| بالفعل محذوف  \n✓"
end
Start_Bot()
return TText
end

if MsgText[1] == "الساعه" then
return "➖\n⏱| الـسـاعه الان : "..os.date("%I:%M%p").."\n"
.."📆| الـتـاريـخ : "..os.date("%Y/%m/%d")
end

if MsgText[1] == "التاريخ" then
return "➖\n📆| الـتـاريـخ : "..os.date("%Y/%m/%d")
end

if MsgText[1] == "تفعيل الاشتراك الاجباري" or MsgText[1] == "تفعيل الاشتراك الاجباري 🔈" then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
if redis:get(veer..":UserNameChaneel") then
return "📑| اهلا عزيزي المطور \n🔖| الاشتراك بالتأكيد مفعل"
else
redis:setex(veer..":ForceSub:"..msg.sender_user_id_,350,true)
return "📑| مرحبا بـك في نظام الاشتراك الاجباري\n🔖| الان ارسل معرف قـنـاتـك"
end
end

if MsgText[1] == "تعطيل الاشتراك الاجباري" or MsgText[1] == "تعطيل الاشتراك الاجباري 🔇" then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
local SubDel = redis:del(veer..":UserNameChaneel")
if SubDel == 1 then
return "🔖| تم تعطيل الاشتراك الاجباري . \n✓"
else
return "🔖| الاشتراك الاجباري بالفعل معطل . \n✓"
end
end

if MsgText[1] == "الاشتراك الاجباري" or MsgText[1] == "الاشتراك الاجباري 🔊" then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
local UserChaneel = redis:get(veer..":UserNameChaneel")
if UserChaneel then
return "🔖| اهلا عزيزي المطور \n🔖| الاشتراك الاجباري للقناة : ["..UserChaneel.."]\n✓"
else
return "🔖| لا يوجد قناة مفعله ع الاشتراك الاجباري. \n✓"
end
end

if MsgText[1] == "تغيير الاشتراك الاجباري" or MsgText[1] == "تغيير الاشتراك الاجباري 🖊" then
if not msg.SudoBase then return"📛*¦* هذا الامر يخص {المطور الاساسي} فقط  \n🚶" end
redis:setex(veer..":ForceSub:"..msg.sender_user_id_,350,true)
return "📑| مرحبا بـك في نظام الاشتراك الاجباري\n🔖| الان ارسل معرف قـنـاتـك"
end





end

--[[
#  ▄█    █▄     ▄████████    ▄████████    ▄████████  Channel : @VeerCli 
# ███    ███   ███    ███   ███    ███   ███    ███ 
# ███    ███   ███    █▀    ███    █▀    ███    ███ 
# ███    ███  ▄███▄▄▄      ▄███▄▄▄      ▄███▄▄▄▄██▀  Bot : @VeerCliBot
# ███    ███ ▀▀███▀▀▀     ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   
# ███    ███   ███    █▄    ███    █▄  ▀███████████ Dev : @RSAIED and @YYBYY
# ███    ███   ███    ███   ███    ███   ███    ███ 
#  ▀██████▀    ██████████   ██████████   ███    ███  By Source Veer
#                                        ███    ███ 
#------------------------------------------------------
]]


local function dVeer(msg)

if msg.type == "pv" then 

if not msg.SudoUser then
local msg_pv = tonumber(redis:get(veer..'user:'..msg.sender_user_id_..':msgs') or 0)
if msg_pv > 5 then
redis:setex(veer..':mute_pv:'..msg.sender_user_id_,18000,true)   
return sendMsg(msg.chat_id_,0,'*📛¦* تم حظرك من البوت بسبب التكرار \n🛠') 
end
redis:setex(veer..'user:'..msg.sender_user_id_..':msgs',2,msg_pv+1)
end

if msg.text=="الاذاعة والاشتراك الاجباري 🔊" and msg.SudoBase then
local text = '🎖¦ آهہ‏‏لآ عزيزي آلمـطـور 🍃\n💰¦ اليک قائمهہ‏‏ آلاذاعهہ‏‏ وآلاشتراك الاجباري 🛠\n...\n\n🚸¦ تسـتطـيع‏‏ آلتحگم بگل آلآوآمـر آلمـمـوجودهہ‏‏ بآلگيبورد\n⚖️¦ فقط آضـغط ع آلآمـر آلذي تريد تنفيذهہ‏‏'
local keyboard = {
 {"اذاعه عام بالتوجيه 📣","اذاعه عام 📢"},
 {"اذاعه بالتوجيه ↪️","اذاعه 👥"},
 {"اذاعه خاص بالتوجيه 🗣","اذاعه خاص 👤"},
 {"تعطيل الاشتراك الاجباري 🔇","تفعيل الاشتراك الاجباري 🔈"},
 {"تغيير الاشتراك الاجباري 🖊","الاشتراك الاجباري 🔊"},
 {"الغاء الامر ✖️","رجوع 🔙"}}
return send_key(msg.sender_user_id_,text,keyboard,nil,msg.id_)
 end
if msg.text=="/start" or msg.text=="رجوع 🔙" then

if msg.SudoBase then
local text = '🎖¦ آهہ‏‏لآ عزيزي آلمـطـور 🍃\n💰¦ آنتهہ‏‏ آلمـطـور آلآسـآسـي هہ‏‏نآ 🛠\n...\n\n🚸¦ تسـتطـيع‏‏ آلتحگم بگل آلآوآمـر آلمـمـوجودهہ‏‏ بآلگيبورد\n⚖️¦ فقط آضـغط ع آلآمـر آلذي تريد تنفيذهہ‏‏'
local keyboard = {
{"ضع اسم للبوت ©","ضع صوره للترحيب 🌄"},
 {"تعطيل التواصل ✖️","تفعيل التواصل 🔛"},
 {"تعطيل البوت خدمي 🚫","تفعيل البوت خدمي 🚸"},
 {"تنظيف الوهمي 🗑","الاحصائيات 📈"},
 {"قائمة المجموعات 📊"},
 {"قائمه العام 📜","المطورين 🕹"},
 {"مسح رد عام ➖","اضف رد عام ➕"},
 {"الملفات 🗂","الردود العامه 🗨"},
{"الاذاعة والاشتراك الاجباري 🔊"},
 {"ايدي 🆔"},
  {"السيرفر 📟","نسخه احتياطيه للمجموعات 📦"},
 {"إعادة تشغيل 🔁"},
 {"الغاء الامر ✖️"}}
return send_key(msg.sender_user_id_,text,keyboard,nil,msg.id_)
else
redis:sadd(veer..'users',msg.sender_user_id_)
SUDO_USER = redis:hgetall(veer..'username:'..SUDO_ID).username
if SUDO_USER:match('@[%a%d_]+') then 
SUDO_USER = "⚖️¦ مـعرف آلمـطـور  : "..SUDO_USER
else
SUDO_USER = ""
end

if redis:get(veer..'lock_service') then 
text = [[💯¦ مـرحبآ آنآ بوت آسـمـي []]..redis:get(veer..':NameBot:')..[[] 🎖
💰¦ آختصـآصـي حمـآيهہ‏‏ آلمـجمـوعآت
📛¦ مـن آلسـبآم وآلتوجيهہ‏‏ وآلتگرآر وآلخ...
🚸¦ البوت خدمي ومتاح للكل 
👷🏽¦ فقط اضف البوت لمجموعتك وارفعه مشرف  
  ثم ارسل تفعيل

]]..SUDO_USER..[[

👨🏽‍🔧]]
else
text = [[💯¦ مـرحبآ آنآ بوت آسـمـي []]..redis:get(veer..':NameBot:')..[[] 🎖
💰¦ آختصـآصـي حمـآيهہ‏‏ آلمـجمـوعآت
📛¦ مـن آلسـبآم وآلتوجيهہ‏‏ وآلتگرآر وآلخ...
🚸¦ فقط آلمـطـور يسـتطـيع تفعيل آلبوت
]]..SUDO_USER..[[

👨🏽‍🔧]]
end
xsudouser = SUDO_USER:gsub('⚖️¦ مـعرف آلمـطـور  : @','')
xsudouser = xsudouser:gsub([[\_]],'_')
local inline = {{{text="آلمـطـور 💬!",url="t.me/"..xsudouser}}}
send_key(msg.sender_user_id_,text,nil,inline,msg.id_)
GetUserID(msg.sender_user_id_,function(arg,data)
Name = FlterName(data,20)
if data.username_ then UserName = "\n🎟¦ الـمعرف •⊱ [@"..data.username_.."] ⊰•" else UserName = "" end
send_msg(SUDO_ID,"👨🏻‍✈️¦ قام شخص بالدخول إلى البوت ...\n\nــــــــــــــــــــــــــــــــــــــــــ\n📑¦ معلومات الشخص \n🤵🏻¦ الاسـم •⊱{ *"..Name.."* }⊰•"..UserName.."\n🆔¦ الايدي •⊱ ["..data.id_.."](tg://user?id="..data.id_..") ⊰•\nــــــــــــــــــــــــــــــــــــــــــ\n📆¦ التاريخ •⊱ *"..os.date("%Y/%m/%d").."* ⊰•\n⏱¦ الساعه •⊱ "..os.date("%I:%M%p").." ⊰•")
end,{data=data})
return false
end
end
 
if msg.SudoBase then
if msg.reply_id then
GetMsgInfo(msg.chat_id_,msg.reply_id,function(arg,data)
if not data.forward_info_ then return false end
local FwdUser = data.forward_info_.sender_user_id_
local MSG_ID = (redis:get(veer.."USER_MSG_TWASEL"..data.forward_info_.date_) or 1)
msg = arg.msg
local SendOk = false
if data.content_.ID == "MessageDocument" then return false end
if msg.text then
sendMsg(FwdUser,MSG_ID,Flter_Markdown(msg.text))
SendOk = true
elseif msg.content_.ID == "MessageSticker" then
sendSticker(FwdUser,MSG_ID,msg.content_.sticker_.sticker_.persistent_id_,msg.content_.caption_ or '')
SendOk = true
elseif msg.content_.ID == "MessagePhoto" then
if msg.content_.photo_.sizes_[3] then 
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
sendPhoto(FwdUser,MSG_ID,photo_id,msg.content_.caption_ or '')
SendOk = true
elseif msg.content_.ID == "MessageVoice" then
sendVoice(FwdUser,MSG_ID,msg.content_.voice_.voice_.persistent_id_,msg.content_.caption_ or '')
SendOk = true
elseif msg.content_.ID == "MessageAnimation" then
sendAnimation(FwdUser,MSG_ID,msg.content_.animation_.animation_.persistent_id_,msg.content_.caption_ or '')
SendOk = true
elseif msg.content_.ID == "MessageVideo" then
sendVideo(FwdUser,MSG_ID,msg.content_.video_.video_.persistent_id_,msg.content_.caption_ or '')
SendOk = true
elseif msg.content_.ID == "MessageAudio" then
sendAudio(FwdUser,MSG_ID,msg.content_.audio_.audio_.persistent_id_,msg.content_.caption_ or '')
SendOk = true
end
if SendOk then
GetUserID(FwdUser,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data,20) end
SendMention(arg.sender_user_id_,data.id_,arg.id_,"📬¦ تم آرسـآل آلرسـآل‏‏هہ 🌿\n🎟¦ آلى : "..USERNAME.." 🏌🏻",39,utf8.len(USERNAME)) 
end,{sender_user_id_=msg.sender_user_id_,id_=msg.id_})
end
end,{msg=msg})
end
else
if not redis:get(veer..'lock_twasel') then
if msg.forward_info_ or msg.content_.ID == "MessageSticker" or msg.content_.ID == "MessageUnsupported" or msg.content_.ID == "MessageDocument" then
return sendMsg(msg.chat_id_,msg.id_,"📛¦ عذرآ لآ يمـگنگ آرسـآل {ملف , توجيه‌‏ , مـلصـق , فديو گآم} ❗️")
end
SUDO_USER = redis:hgetall(veer..'username:'..SUDO_ID).username
if SUDO_USER:match('@[%a%d_]+') then 
SUDO_USER = "\n🏌 "..SUDO_USER
else
SUDO_USER = ""
end
redis:setex(veer.."USER_MSG_TWASEL"..msg.date_,43200,msg.id_)
sendMsg(msg.chat_id_,msg.id_,"🗯¦ تم آرسـآل رسـآلتگ آلى آلمـطـور\n📬¦ سـآرد عليگ في آقرب وقت"..SUDO_USER)
fwdMsg(SUDO_ID,msg.chat_id_,msg.id_)
end
return false
end
end

--====================== Reply Only Group =====================================
if msg.Admin and redis:get(veer..'addrd:'..msg.chat_id_..msg.sender_user_id_) and redis:get(veer..'replay1'..msg.chat_id_..msg.sender_user_id_) then
local klma = redis:get(veer..'replay1'..msg.chat_id_..msg.sender_user_id_)
if msg.content_ and msg.content_.caption_ then redis:hset(veer..':caption_replay:'..msg.chat_id_,klma,msg.content_.caption_) end
if msg.text then 
redis:del(veer..'addrd:'..msg.chat_id_..msg.sender_user_id_)
if utf8.len(msg.text) > 550 then 
sendMsg(msg.chat_id_,msg.id_,"📛¦ عذرا غير مسموح باضافه جواب الرد باكثر من 550 حرف تم الغاء الامر\n❕")
return false
end
redis:hset(veer..'replay:'..msg.chat_id_,klma,Flter_Markdown(msg.text))
sendMsg(msg.chat_id_,msg.id_,'(['..klma..'])\n  ✓ تم اضافت الرد 🚀 \n-')
return false
elseif msg.content_.ID == "MessagePhoto" then
if msg.content_.photo_.sizes_[3] then 
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
redis:hset(veer..'replay_photo:group:'..msg.chat_id_,klma,photo_id)
redis:del(veer..'addrd:'..msg.chat_id_..msg.sender_user_id_)
return sendMsg(msg.chat_id_,msg.id_,'🗂¦ تم اضافه صوره للرد بنجاح ✓\n🗂¦ يمكنك ارسال (['..klma..']) لاضهار الصوره الاتيه .')
elseif msg.content_.ID == "MessageVoice" then
redis:hset(veer..'replay_voice:group:'..msg.chat_id_,klma,msg.content_.voice_.voice_.persistent_id_)
redis:del(veer..'addrd:'..msg.chat_id_..msg.sender_user_id_)
return sendMsg(msg.chat_id_,msg.id_,'🗂¦ تم اضافه بصمه صوت للرد بنجاح ✓\n🗂¦ يمكنك ارسال (['..klma..']) لسماع البصمه الاتيه .')
elseif msg.content_.ID == "MessageAnimation" then
redis:hset(veer..'replay_animation:group:'..msg.chat_id_,klma,msg.content_.animation_.animation_.persistent_id_)
redis:del(veer..'addrd:'..msg.chat_id_..msg.sender_user_id_)
return sendMsg(msg.chat_id_,msg.id_,'🗂¦ تم اضافه متحركه للرد بنجاح ✓\n🗂¦ يمكنك ارسال (['..klma..']) لاضهار الصوره الاتيه .')
elseif msg.content_.ID == "MessageVideo" then
redis:hset(veer..'replay_video:group:'..msg.chat_id_,klma,msg.content_.video_.video_.persistent_id_)
redis:del(veer..'addrd:'..msg.chat_id_..msg.sender_user_id_)
return sendMsg(msg.chat_id_,msg.id_,'🗂¦ تم اضافه فيديو للرد بنجاح ✓\n🗂¦ يمكنك ارسال (['..klma..']) لاضهار الفيديو الاتي .')
elseif msg.content_.ID == "MessageAudio" then
redis:hset(veer..'replay_audio:group:'..msg.chat_id_,klma,msg.content_.audio_.audio_.persistent_id_)
redis:del(veer..'addrd:'..msg.chat_id_..msg.sender_user_id_)
return sendMsg(msg.chat_id_,msg.id_,'🗂¦ تم اضافه للصوت للرد بنجاح ✓\n🗂¦ يمكنك ارسال (['..klma..']) لاضهار الصوت الاتي .')
elseif msg.content_.ID == "MessageSticker" then
redis:hset(veer..'replay_sticker:group:'..msg.chat_id_,klma,msg.content_.sticker_.sticker_.persistent_id_)
redis:del(veer..'addrd:'..msg.chat_id_..msg.sender_user_id_)
return sendMsg(msg.chat_id_,msg.id_,'🗂¦ تم اضافه ملصق للرد بنجاح ✓\n🗂¦ يمكنك ارسال (['..klma..']) لاضهار الملصق الاتي .')
end  

end

--====================== Reply All Groups =====================================
if msg.SudoUser and redis:get(veer..'addrd_all:'..msg.chat_id_..msg.sender_user_id_) and redis:get(veer..'allreplay:'..msg.chat_id_..msg.sender_user_id_) then
local klma = redis:get(veer..'allreplay:'..msg.chat_id_..msg.sender_user_id_)
if msg.content_.caption_ then redis:hset(veer..':caption_replay_All:',klma,msg.content_.caption_) end
if msg.text then
redis:del(veer..'addrd_all:'..msg.chat_id_..msg.sender_user_id_)
if utf8.len(msg.text) > 550 then 
sendMsg(msg.chat_id_,msg.id_,"📛¦ عذرا غير مسموح باضافه جواب الرد باكثر من 550 حرف تم الغاء الامر\n❕")
return false
end
redis:hset(veer..'replay:all',klma,Flter_Markdown(msg.text))
return sendMsg(msg.chat_id_,msg.id_,'(['..klma..'])\n  ✓ تم اضافت الرد لكل المجموعات 🚀 ')
elseif msg.content_.ID == "MessagePhoto" then 
if msg.content_.photo_.sizes_[3] then 
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
redis:hset(veer..'replay_photo:group:',klma,photo_id)
redis:del(veer..'addrd_all:'..msg.chat_id_..msg.sender_user_id_)
return sendMsg(msg.chat_id_,msg.id_,'🗂¦ تم اضافه صوره للرد العام ✓\n🗂¦ يمكنك ارسال (['..klma..']) لاضهار الصوره الاتيه .')
elseif msg.content_.ID == "MessageVoice" then
redis:hset(veer..'replay_voice:group:',klma,msg.content_.voice_.voice_.persistent_id_)
redis:del(veer..'addrd_all:'..msg.chat_id_..msg.sender_user_id_)
return sendMsg(msg.chat_id_,msg.id_,'🗂¦ تم اضافه بصمه صوت للرد العام ✓\n🗂¦ يمكنك ارسال (['..klma..']) لسماع البصمه الاتيه .')
elseif msg.content_.ID == "MessageAnimation" then
redis:hset(veer..'replay_animation:group:',klma,msg.content_.animation_.animation_.persistent_id_)
redis:del(veer..'addrd_all:'..msg.chat_id_..msg.sender_user_id_)
return sendMsg(msg.chat_id_,msg.id_,'🗂¦ تم اضافه متحركه للرد العام ✓\n🗂¦ يمكنك ارسال (['..klma..']) لاضهار الصوره الاتيه .')
elseif msg.content_.ID == "MessageVideo" then
redis:hset(veer..'replay_video:group:',klma,msg.content_.video_.video_.persistent_id_)
redis:del(veer..'addrd_all:'..msg.chat_id_..msg.sender_user_id_)
return sendMsg(msg.chat_id_,msg.id_,'🗂¦ تم اضافه فيديو للرد العام ✓\n🗂¦ يمكنك ارسال (['..klma..']) لاضهار الفيديو الاتي .')
elseif msg.content_.ID == "MessageAudio" then
redis:hset(veer..'replay_audio:group:',klma,msg.content_.audio_.audio_.persistent_id_)
redis:del(veer..'addrd_all:'..msg.chat_id_..msg.sender_user_id_)
return sendMsg(msg.chat_id_,msg.id_,'🗂¦ تم اضافه للصوت للرد العام ✓\n🗂¦ يمكنك ارسال (['..klma..']) لاضهار الصوت الاتي .')
elseif msg.content_.ID == "MessageSticker" then
redis:hset(veer..'replay_sticker:group:',klma,msg.content_.sticker_.sticker_.persistent_id_)
redis:del(veer..'addrd_all:'..msg.chat_id_..msg.sender_user_id_)
return sendMsg(msg.chat_id_,msg.id_,'🗂¦ تم اضافه ملصق للرد العام ✓\n🗂¦ يمكنك ارسال (['..klma..']) لاضهار الملصق الاتي .')
end  

end

if msg.text then
--====================== Requst UserName Of Channel For ForceSub ==============

if msg.SudoBase and redis:get(veer..":ForceSub:"..msg.sender_user_id_) then
if msg.text:match("^@[%a%d_]+$") then
redis:del(veer..":ForceSub:"..msg.sender_user_id_)
local url , res = https.request(ApiToken..'/getchatmember?chat_id='..msg.text..'&user_id='..msg.sender_user_id_)
if res == 400 then
local Req = JSON.decode(url)
if Req.description == "Bad Request: chat not found" then 
sendMsg(msg.chat_id_,msg.id_,"📑| عذرا , هناك خطأ لديك \n🔖| المعرف الذي ارسلته ليس معرف قناة.")
elseif Req.description == "Bad Request: CHAT_ADMIN_REQUIRED" then
sendMsg(msg.chat_id_,msg.id_,"📑| عذرا , لقد نسيت شيئا \n🔖| يجب رفع البوت مشرف في قناتك لتتمكن من تفعيل الاشتراك الاجباري .")
end
else
redis:set(veer..":UserNameChaneel",msg.text)
sendMsg(msg.chat_id_,msg.id_,"🔖| جـيـد , الان لقد تم تفعيل الاشتراك الاجباري\n📮| على قناتك : ["..msg.text.."]")
end
else
sendMsg(msg.chat_id_,msg.id_,"📑| عذرا , عزيزي المطور \n🔖| هذا ليس معرف قناة , حاول مجددا .")
end
return false
end

if msg.SudoBase and redis:get(veer..'namebot:witting'..msg.sender_user_id_) then --- استقبال اسم البوت 
if utf8.len(msg.text) >= 50 then 
sendMsg(msg.chat_id_,msg.id_,"📛¦ لا يمكنك وضع اسم باكثر من 50 حرف\n❕")
else
redis:del(veer..'namebot:witting'..msg.sender_user_id_)
redis:set(veer..':NameBot:',msg.text)
Start_Bot() 
sendMsg(msg.chat_id_,msg.id_,"📭¦ تم تغير اسم البوت  ✋🏿\n🗯¦ الان اسمه "..Flter_Markdown(msg.text).." \n✓")
end
return false
end

if msg.SudoBase and redis:get(veer..'addrd_all:'..msg.chat_id_..msg.sender_user_id_) and not redis:get(veer..'allreplay:'..msg.chat_id_..msg.sender_user_id_) then -- استقبال الرد لكل المجموعات
if utf8.len(msg.text) > 25 then 
sendMsg(msg.chat_id_,msg.id_,"📛¦ عذرا غير مسموح باضافه كلمه الرد باكثر من 25 حرف \n❕")
else
redis:hdel(veer..'replay_photo:group:',msg.text)
redis:hdel(veer..'replay_voice:group:',msg.text)
redis:hdel(veer..'replay_animation:group:',msg.text)
redis:hdel(veer..'replay_audio:group:',msg.text)
redis:hdel(veer..'replay_sticker:group:',msg.text)
redis:hdel(veer..'replay_video:group:',msg.text)
redis:setex(veer..'allreplay:'..msg.chat_id_..msg.sender_user_id_,300,msg.text)
sendMsg(msg.chat_id_,msg.id_,"📜¦ جيد , يمكنك الان ارسال جوا ب الردالعام \n🔛¦ [[ نص,صوره,فيديو,متحركه,بصمه,اغنيه ]] ✓\n-")
end
return false
end

if msg.SudoUser and redis:get(veer..'delrdall:'..msg.sender_user_id_) then
redis:del(veer..'delrdall:'..msg.sender_user_id_)
local names = redis:hget(veer..'replay:all',msg.text)
local photo =redis:hget(veer..'replay_photo:group:',msg.text)
local voice = redis:hget(veer..'replay_voice:group:',msg.text)
local animation = redis:hget(veer..'replay_animation:group:',msg.text)
local audio = redis:hget(veer..'replay_audio:group:',msg.text)
local sticker = redis:hget(veer..'replay_sticker:group:',msg.text)
local video = redis:hget(veer..'replay_video:group:',msg.text)
if not (names or photo or voice or animation or audio or sticker or video) then
sendMsg(msg.chat_id_,msg.id_,'💬*¦* هذا الرد ليس مضاف في قائمه الردود 📛')
else
redis:hdel(veer..'replay:all',msg.text)
redis:hdel(veer..'replay_photo:group:',msg.text)
redis:hdel(veer..'replay_voice:group:',msg.text)
redis:hdel(veer..'replay_audio:group:',msg.text)
redis:hdel(veer..'replay_animation:group:',msg.text)
redis:hdel(veer..'replay_sticker:group:',msg.text)
redis:hdel(veer..'replay_video:group:',msg.text)
redis:hdel(veer..':caption_replay_All:',msg.text)
sendMsg(msg.chat_id_,msg.id_,'('..Flter_Markdown(msg.text)..')\n  ✓ تم مسح الرد 🚀 ')
end
return false
end 


if msg.SudoBase and redis:get(veer..'text_sudo:witting'..msg.sender_user_id_) then -- استقبال كليشه المطور
if utf8.len(msg.text) > 2500 then 
sendMsg(msg.chat_id_,msg.id_,"📛¦ لا يمكنك وضع كليشه باكثر من 2500 حرف\n❕")
else
redis:del(veer..'text_sudo:witting'..msg.sender_user_id_) 
redis:set(veer..':TEXT_SUDO',msg.text)
send_msg(msg.chat_id_, "📜*¦* تم وضع الكليشه بنجاح كلاتي 👋🏻\n\n*{*  "..msg.text.."  *}*\n✓",msg.id_)
end
return false
end

if msg.Admin and redis:get(veer..'welcom:witting'..msg.sender_user_id_) then -- استقبال كليشه الترحيب
if utf8.len(msg.text) > 2500 then 
sendMsg(msg.chat_id_,msg.id_,"📛¦ لا يمكنك وضع كليشه باكثر من 2500 حرف\n❕")
else
redis:del(veer..'welcom:witting'..msg.sender_user_id_) 
redis:set(veer..'welcome:msg'..msg.chat_id_,msg.text)
sendMsg(msg.chat_id_,msg.id_,"📜*¦* تم وضع الترحيب بنجاح  👋\n✓" )
end
return false
end

if msg.Admin and redis:get(veer..'idveer:edit'..msg.sender_user_id_) then -- استقبال كليشه الايدي
if utf8.len(msg.text) > 1500 then 
sendMsg(msg.chat_id_,msg.id_,"📛¦ لا يمكنك وضع كليشه باكثر من 1500 حرف\n❕")
else
redis:del(veer..'idveer:edit'..msg.sender_user_id_) 
redis:set(veer..'idveer:msg'..msg.chat_id_,msg.text)
sendMsg(msg.chat_id_,msg.id_,"📜*¦* تم وضع كليشه الايدي بنجاح  👋\n✓" )
end
return false
end

if msg.Admin and redis:get(veer..'rulse:witting'..msg.sender_user_id_) then --- استقبال القوانين
if utf8.len(msg.text) > 2500 then 
sendMsg(msg.chat_id_,msg.id_,"📛¦ لا يمكنك وضع قوانين باكثر من 2500 حرف\n❕")
else
redis:del(veer..'rulse:witting'..msg.sender_user_id_) 
redis:set(veer..'rulse:msg'..msg.chat_id_,Flter_Markdown(msg.text)) 
sendMsg(msg.chat_id_,msg.id_,'📜*¦* مرحبآ عزيزي\n📦¦ تم حفظ القوانين بنجاح ✓\n🔖¦ ارسل [[ القوانين ]] لعرضها \n💬✓')
end
return false
end

if msg.Admin and redis:get(veer..'name:witting'..msg.sender_user_id_) then --- استقبال الاسم
if utf8.len(msg.text) > 550 then 
sendMsg(msg.chat_id_,msg.id_,"📛¦ لا يمكنك اسم المجموعه باكثر من 550 حرف \n❕")
else
redis:del(veer..'name:witting'..msg.sender_user_id_) 
tdcli_function({ID="ChangeChatTitle",chat_id_=msg.chat_id_,title_=msg.text},dl_cb,nil)
end
return false
end

if msg.Admin and redis:get(veer..'about:witting'..msg.sender_user_id_) then --- استقبال الوصف
if utf8.len(msg.text) > 1000 then 
sendMsg(msg.chat_id_,msg.id_,"📛¦ لا يمكنك وضع وصف باكثر من 1000 حرف \n❕")
else
redis:del(veer..'about:witting'..msg.sender_user_id_) 
tdcli_function({ID="ChangeChannelAbout",channel_id_=msg.chat_id_:gsub('-100',''),about_ = msg.text},function(arg,data) 
if data.ID == "Ok" then 
sendMsg(arg.chat_id_,arg.id_,"📜*¦* تم وضع الوصف بنجاح\n✓")
end 
end,{chat_id_=msg.chat_id_,id_=msg.id_})
end
return false
end

if redis:get(veer..'linkGroup'..msg.sender_user_id_,link) then --- استقبال الرابط
redis:del(veer..'linkGroup'..msg.sender_user_id_,link) 
redis:set(veer..'linkGroup'..msg.chat_id_,Flter_Markdown(msg.text)) 
return sendMsg(msg.chat_id_,msg.id_,'🗯¦ الان تم وضع الرابط جديد 🍃')
end

if redis:get(veer..'fwd:all'..msg.sender_user_id_) then ---- استقبال رساله الاذاعه عام
sendMsg(msg.chat_id_,msg.id_,'??| اهلا عزيزي المطور \n🔖| جاري نشر التوجيه للمجموعات وللمشتركين ...')			
redis:del(veer..'fwd:all'..msg.sender_user_id_)
local pv = redis:smembers(veer..'users')  
local groups = redis:smembers(veer..'group:ids')
local allgp =  #pv + #groups
if allgp >= 300 then
end
for i = 1, #pv do 
sendMsg(pv[i],0,Flter_Markdown(msg.text))
end
for i = 1, #groups do 
sendMsg(groups[i],0,Flter_Markdown(msg.text))
end
return sendMsg(msg.chat_id_,msg.id_,'📜*¦* تم اذاعه الكليشه بنجاح 🏌🏻\n🗣*¦* للمـجمـوعآت » *'..#groups..'* گروب \n👥*¦* للمـشـترگين » '..#pv..' مـشـترگ \n✓')
end

if redis:get(veer..'fwd:pv'..msg.sender_user_id_) then ---- استقبال رساله الاذاعه خاص
sendMsg(msg.chat_id_,msg.id_,'📑| اهلا عزيزي المطور \n🔖| جاري نشر الرساله للمشتركين ...')			
redis:del(veer..'fwd:pv'..msg.sender_user_id_)
local pv = redis:smembers(veer..'users')
if #pv >= 300 then
end
local NumPvDel = 0
for i = 1, #pv do
sendMsg(pv[i],0,Flter_Markdown(msg.text))
end
sendMsg(msg.chat_id_,msg.id_,'🙍🏼‍♂️*¦* عدد المشتركين : '..#pv..'\n🗣*¦* تم الاذاعه بنجاح ✓') 
end

if redis:get(veer..'fwd:groups'..msg.sender_user_id_) then ---- استقبال رساله الاذاعه خاص
sendMsg(msg.chat_id_,msg.id_,'📑| اهلا عزيزي المطور \n🔖| جاري نشر الرساله للمجموعات ...')			
redis:del(veer..'fwd:groups'..msg.sender_user_id_)
local groups = redis:smembers(veer..'group:ids')
if #groups >= 300 then
end
local NumGroupsDel = 0
for i = 1, #groups do 
sendMsg(groups[i],0,Flter_Markdown(msg.text))
end
sendMsg(msg.chat_id_,msg.id_,'📑*¦* عدد المجموعات •⊱ { *'..#groups..'* } ⊰•\n🗣*¦* تـم الاذاعه بنجاح ✓')
end 
end 

if msg.forward_info_ and redis:get(veer..'fwd:'..msg.sender_user_id_) then
sendMsg(msg.chat_id_,msg.id_,'📑| اهلا عزيزي المطور \n🔖| جاري نشر التوجيه للمجموعات وللمشتركين ...')			
redis:del(veer..'fwd:'..msg.sender_user_id_)
local pv = redis:smembers(veer..'users')
local groups = redis:smembers(veer..'group:ids')
local allgp =  #pv + #groups
if allgp == 500 then
end
local number = 0
for i = 1, #pv do 
fwdMsg(pv[i],msg.chat_id_,msg.id_,dl_cb,nil)
end
for i = 1, #groups do 
fwdMsg(groups[i],msg.chat_id_,msg.id_,dl_cb,nil)
end
return sendMsg(msg.chat_id_,msg.id_,'📜*¦* تم اذاعه التوجيه بنجاح 🏌🏻\n🗣*¦* للمـجمـوعآت » *'..#groups..'* \n👥*¦* للخآص » '..#pv..'\n✓')			
end

if msg.forward_info_ and redis:get(veer..'fwd:groupsveer'..msg.sender_user_id_) then
sendMsg(msg.chat_id_,msg.id_,'📑| اهلا عزيزي المطور \n🔖| جاري نشر التوجيه للمجموعات ...')			
redis:del(veer..'fwd:groupsveer'..msg.sender_user_id_)
local groups = redis:smembers(veer..'group:ids')
local allgroupsfwd =  #groups
if allgroupsfwd == 500 then
end
local number = 0
for i = 1, #groups do 
fwdMsg(groups[i],msg.chat_id_,msg.id_,dl_cb,nil)
end
return sendMsg(msg.chat_id_,msg.id_,'📜*¦* تم اذاعه التوجيه بنجاح 🏌🏻\n🗣*¦* للمـجمـوعآت » *'..#groups..'*\n✓')			
end

 if msg.forward_info_ and redis:get(veer..'fwd:number'..msg.sender_user_id_) then
sendMsg(msg.chat_id_,msg.id_,'📑| اهلا عزيزي المطور \n🔖| جاري نشر التوجيه للمشتركين ...')   
redis:del(veer..'fwd:number'..msg.sender_user_id_)
local pv = redis:smembers(veer..'users')
local allpvfwd =  #pv
if allpvfwd == 500 then
end
local number = 0
for i = 1, #pv do 
fwdMsg(pv[i],msg.chat_id_,msg.id_,dl_cb,nil)
end
return sendMsg(msg.chat_id_,msg.id_,'📜*¦* تم اذاعه التوجيه بنجاح 🏌🏻 \n👥*¦* للخآص » '..#pv..'\n✓')   
end

if msg.text and msg.type == "channel" then
if msg.text:match("^"..Bot_Name.." غادر$") and (msg.SudoBase or msg.SudoUser or msg.Director) then
sendMsg(msg.chat_id_,msg.id_,'اوك باي 😢💔💯') 
rem_data_group(msg.chat_id_)
StatusLeft(msg.chat_id_,our_id)
return false
end
end

if msg.SudoBase and  msg.content_.ID == "MessagePhoto" and redis:get(veer..'welcom_ph:witting'..msg.sender_user_id_) then
redis:del(veer..'welcom_ph:witting'..msg.sender_user_id_)
if msg.content_.photo_.sizes_[3] then 
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
redis:set(veer..':WELCOME_BOT',photo_id)
sendMsg(msg.chat_id_,msg.id_,'🚸 ¦ تم تغيير صـورهہ‏‏ آلترحيب للبوت 🌿\n✓')
return false
end 



if msg.type ~= "channel" or not msg.GroupActive then return false end

if msg.Admin and msg.content_.ID == "MessagePhoto" and redis:get(veer..'photo:group'..msg.chat_id_..msg.sender_user_id_)then
redis:del(veer..'photo:group'..msg.chat_id_..msg.sender_user_id_)
if msg.content_.photo_.sizes_[3] then 
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
tdcli_function({ID="ChangeChatPhoto",chat_id_=msg.chat_id_,photo_=GetInputFile(photo_id)},function(arg,data)
if data.code_ == 3 then
sendMsg(arg.chat_id_,arg.id_,'🚸 ¦ ليس لدي صلاحيه تغيير الصوره \n🤖 ¦ يجب اعطائي صلاحيه `تغيير معلومات المجموعه ` ⠀\n✓')
end
end,{chat_id_=msg.chat_id_,id_=msg.id_})
return false
end


if msg.text and msg.Admin then

if redis:get(veer..'addrd:'..msg.chat_id_..msg.sender_user_id_) and not redis:get(veer..'replay1'..msg.chat_id_..msg.sender_user_id_) then 

-- استقبال الرد للمجموعه فقط

if utf8.len(msg.text) > 25 then 
sendMsg(msg.chat_id_,msg.id_,"📛¦ عذرا غير مسموح باضافه كلمه الرد باكثر من 25 حرف \n❕")
return false
end
redis:hdel(veer..'replay:'..msg.chat_id_,msg.text)
redis:hdel(veer..'replay_photo:group:'..msg.chat_id_,msg.text)
redis:hdel(veer..'replay_voice:group:'..msg.chat_id_,msg.text)
redis:hdel(veer..'replay_animation:group:'..msg.chat_id_,msg.text)
redis:hdel(veer..'replay_audio:group:'..msg.chat_id_,msg.text)
redis:hdel(veer..'replay_sticker:group:'..msg.chat_id_,msg.text)
redis:hdel(veer..'replay_video:group:'..msg.chat_id_,msg.text)
redis:setex(veer..'replay1'..msg.chat_id_..msg.sender_user_id_,300,msg.text)
sendMsg(msg.chat_id_,msg.id_,"📜¦ جيد , يمكنك الان ارسال جواب الرد \n🔛¦ {نص,صوره,فيديو,متحركه,بصمه,اغنيه } ✓")
return false
end

if redis:get(veer..'delrd:'..msg.sender_user_id_) then  -- Del Replay For Group
redis:del(veer..'delrd:'..msg.sender_user_id_)
local names 	= redis:hget(veer..'replay:'..msg.chat_id_,msg.text)
local photo 	= redis:hget(veer..'replay_photo:group:'..msg.chat_id_,msg.text)
local voice 	= redis:hget(veer..'replay_voice:group:'..msg.chat_id_,msg.text)
local animation = redis:hget(veer..'replay_animation:group:'..msg.chat_id_,msg.text)
local audio 	= redis:hget(veer..'replay_audio:group:'..msg.chat_id_,msg.text)
local sticker 	= redis:hget(veer..'replay_sticker:group:'..msg.chat_id_,msg.text)
local video 	= redis:hget(veer..'replay_video:group:'..msg.chat_id_,msg.text)
if not (names or photo or voice or animation or audio or sticker or video) then
sendMsg(msg.chat_id_,msg.id_,'💬*¦* هذا الرد ليس مضاف في قائمه الردود 📛')
else
redis:hdel(veer..'replay:'..msg.chat_id_,msg.text)
redis:hdel(veer..'replay_photo:group:'..msg.chat_id_,msg.text)
redis:hdel(veer..'replay_voice:group:'..msg.chat_id_,msg.text)
redis:hdel(veer..'replay_audio:group:'..msg.chat_id_,msg.text)
redis:hdel(veer..'replay_animation:group:'..msg.chat_id_,msg.text)
redis:hdel(veer..'replay_sticker:group:'..msg.chat_id_,msg.text)
redis:hdel(veer..'replay_video:group:'..msg.chat_id_,msg.text)
redis:hdel(veer..':caption_replay:'..msg.chat_id_,msg.text)
sendMsg(msg.chat_id_,msg.id_,'(['..msg.text..'])\n  ✓ تم مسح الرد 🚀 ')
end 
return false
end

end

if msg.content_.ID == "MessagePinMessage" then
print(" -- pinned -- ")
local msg_pin_id = redis:get(veer..":MsgIDPin:"..msg.chat_id_)
if not msg.Director and redis:get(veer..'lock_pin'..msg.chat_id_) then
if msg_pin_id then
print(" -- pinChannelMessage -- ")
tdcli_function({ID ="PinChannelMessage",
channel_id_ = msg.chat_id_:gsub('-100',''),
message_id_ = msg_pin_id,
disable_notification_ = 0},
function(arg,data)
if data.ID == "Ok" then
sendMsg(arg.chat_id_,arg.id_,"📛‍♂️*¦* عذرا التثبيت مقفل من قبل الاداره تم ارجاع التثبيت القديم\n")
end
end,{chat_id_=msg.chat_id_,id_=msg.id_})
else
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100','')},
function(arg,data) 
if data.ID == "Ok" then
sendMsg(msg.chat_id_,msg.id_,"📛‍♂️*¦* عذرا التثبيت مقفل من قبل الاداره تم الغاء التثبيت\n✓")      
end
end,{chat_id_=msg.chat_id_,id_=msg.id_})
end
return false
end
redis:set(veer..":MsgIDPin:"..msg.chat_id_,msg.id_)
end

if msg.content_.ID == "MessageChatChangePhoto" then
GetUserID(msg.sender_user_id_,function(arg,data)
if data.username_ then UserName = "@"..data.username_ else UserName = "احد المشرفين" end
sendMsg(msg.chat_id_,msg.id_," قام ["..UserName.."] بتغير صوره المجموعه ✓\n")
end,{chat_id_=msg.chat_id_,id_=msg.id_})
end

if msg.content_.ID == "MessageChatChangeTitle" then
GetUserID(msg.sender_user_id_,function(arg,data)
redis:set(veer..'group:name'..arg.chat_id_,arg.title_)
if data.username_ then UserName = "@"..data.username_ else UserName = "احد المشرفين" end
sendMsg(arg.chat_id_,arg.id_,"📡| قام  ["..UserName.."]\n📭¦ بتغير اسم المجموعه  ✋🏿\n🗯¦ الى "..Flter_Markdown(msg.content_.title_).." \n✓") 
end,{chat_id_=msg.chat_id_,id_=msg.id_,title_=msg.content_.title_})
end

if msg.content_.ID == "MessageChatAddMembers" and redis:get(veer..'welcome:get'..msg.chat_id_) then
local adduserx = tonumber(redis:get(veer..'user:'..msg.sender_user_id_..':msgs') or 0)
if adduserx > 3 then 
redis:del(veer..'welcome:get'..msg.chat_id_)
end
redis:setex(veer..'user:'..msg.sender_user_id_..':msgs',3,adduserx+1)
end

if (msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == "MessageChatJoinByLink") then
if redis:get(veer..'welcome:get'..msg.chat_id_) then
if msg.adduserType then
welcome = (redis:get(veer..'welcome:msg'..msg.chat_id_) or "🔖¦ مرحباً عزيزي\n🔖¦ نورت المجموعة \n💂🏼‍♀️")
welcome = welcome:gsub("{القوانين}", redis:get(veer..'rulse:msg'..msg.chat_id_) or "🔖¦ مرحبأ عزيري 👋🏻 القوانين كلاتي 👇🏻\n🔖¦ ممنوع نشر الروابط \n🔖¦ ممنوع التكلم او نشر صور اباحيه \n🔖¦ ممنوع  اعاده توجيه \n🔖¦ ممنوع التكلم بلطائفه \n🔖¦ الرجاء احترام المدراء والادمنيه 😅\n")
if msg.addusername then UserName = '@'..msg.addusername else UserName = '< لا يوجد معرف >' end
welcome = welcome:gsub("{المجموعه}",Flter_Markdown((redis:get(veer..'group:name'..msg.chat_id_) or '')))
local welcome = welcome:gsub("{المعرف}",UserName)
local welcome = welcome:gsub("{الاسم}",FlterName(msg.addname,20))
sendMsg(msg.chat_id_,msg.id_,Flter_Markdown(welcome))
return false
else
GetUserID(msg.sender_user_id_,function(arg,data)
welcome = (redis:get(veer..'welcome:msg'..arg.chat_id_) or "🔖¦ مرحباً عزيزي\n🔖¦ نورت المجموعة \n💂🏼‍♀️")
welcome = welcome:gsub("{القوانين}", redis:get(veer..'rulse:msg'..arg.chat_id_) or "🔖¦ مرحبأ عزيري 👋🏻 القوانين كلاتي 👇🏻\n🔖¦ ممنوع نشر الروابط \n🔖¦ ممنوع التكلم او نشر صور اباحيه \n🔖¦ ممنوع  اعاده توجيه \n🔖¦ ممنوع التكلم بلطائفه \n🔖¦ الرجاء احترام المدراء والادمنيه 😅\n")
if data.username_ then UserName = '@'..data.username_ else UserName = '< لا يوجد معرف >' end
welcome = welcome:gsub("{المجموعه}",Flter_Markdown((redis:get(veer..'group:name'..arg.chat_id_) or '')))
local welcome = welcome:gsub("{المعرف}",UserName)
local welcome = welcome:gsub("{الاسم}",FlterName(data,20))
sendMsg(arg.chat_id_,arg.id_,Flter_Markdown(welcome)) 
end,{chat_id_=msg.chat_id_,id_=msg.id_})
end 
return false
end 
end

if not msg.Admin and not msg.Special then -- للاعضاء فقط   

if not msg.forward_info_ and msg.content_.ID ~= "MessagePhoto" and redis:get(veer..'lock_flood'..msg.chat_id_)  then
local msgs = (redis:get(veer..'user:'..msg.sender_user_id_..':msgs') or 0)
local NUM_MSG_MAX = (redis:get(veer..'num_msg_max'..msg.chat_id_) or 5)
if tonumber(msgs) > tonumber(NUM_MSG_MAX) then 
redis:setex(veer..'sender:'..msg.sender_user_id_..':'..msg.chat_id_..'flood',30,true)
GetUserID(msg.sender_user_id_,function(arg,data)
Restrict(arg.chat_id_,arg.sender_user_id_,1)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n🚸¦ قمـت بتگرآر آگثر مـن "..arg.NUM_MSG_MAX.." رسـآلهہ‌‏ , لذآ تم تقييدگ مـن آلمـجمـوعهہ‌‏ ✓\n",12,utf8.len(USERNAME)) 
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_,NUM_MSG_MAX=NUM_MSG_MAX})
return false
end 
redis:setex(veer..'user:'..msg.sender_user_id_..':msgs',2,msgs+1)
end
 
 
if msg.forward_info_ then
if redis:get(veer..'mute_forward'..msg.chat_id_) then -- قفل التوجيه
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del Becuse Send Fwd \27[0m")
if data.ID == "Error" and data.code_ == 6 then 
sendMsg(msg.chat_id_,msg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
return false
end
if redis:get(veer..'lock_woring'..msg.chat_id_) and not redis:get(veer..':User_Fwd_Msg:'..msg.sender_user_id_..':flood') then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,data.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا ممنوع اعادة التوجيه  \n📛",12,utf8.len(USERNAME)) 
redis:setex(veer..':User_Fwd_Msg:'..arg.sender_user_id_..':flood',15,true)
end,{chat_id_=arg.chat_id_,id_=arg.id_,sender_user_id_=arg.sender_user_id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif redis:get(veer..':tqeed_fwd:'..msg.chat_id_) then
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del Becuse Send Fwd tqeed \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
Restrict(arg.chat_id_,arg.sender_user_id_,1)
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false 
end
elseif msg.edited and msg.content_.ID ~= "MessageText" and redis:get(veer..'lock_edit'..msg.chat_id_) then -- قفل التعديل
Del_msg(msg.chat_id_,msg.id_,function(arg,data) 
print("\27[1;31m Msg Del becuse send Edit \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(msg.chat_id_,msg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..msg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذراً ممنوع التعديل تم المسح \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif tonumber(msg.via_bot_user_id_) ~= 0 and redis:get(veer..'mute_inline'..msg.chat_id_) then -- قفل الانلاين
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send inline \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(msg.chat_id_,msg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..msg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا الانلاين مقفول  \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif msg.text then -- رسايل فقط
if utf8.len(msg.text) > 500 and redis:get(veer..'lock_spam'..msg.chat_id_) then -- قفل الكليشه 
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send long msg \27[0m")
if data.ID == "Error" and data.code_ == 6 then
sendMsg(arg.chat_id_,msg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
return false
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ ممنوع ارسال الكليشه والا سوف تجبرني على طردك  \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif (msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") 
or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") 
or msg.text:match("[Tt].[Mm][Ee]/") 
or msg.text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") 
or msg.text:match(".[Pp][Ee]") 
or msg.text:match("[Hh][Tt][Tt][Pp][Ss]://") 
or msg.text:match("[Hh][Tt][Tt][Pp]://") 
or msg.text:match("[Ww][Ww][Ww].") 
or msg.text:match(".[Cc][Oo][Mm]")) 
and redis:get(veer..':tqeed_link:'..msg.chat_id_)  then
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m The user i restricted becuse send link \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
Restrict(arg.chat_id_,arg.sender_user_id_,1)
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif(msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") 
or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") 
or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Oo][Rr][Gg]/") 
or msg.text:match("[Tt].[Mm][Ee]/") or msg.text:match(".[Pp][Ee]")) 
and redis:get(veer..'lock_link'..msg.chat_id_) then
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send link \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ ممنوع ارسال الروابط  \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif (msg.text:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.text:match("[Hh][Tt][Tt][Pp]://") or msg.text:match("[Ww][Ww][Ww].") or msg.text:match(".[Cc][Oo][Mm]") or msg.text:match(".[Tt][Kk]") or msg.text:match(".[Mm][Ll]") or msg.text:match(".[Oo][Rr][Gg]")) and redis:get(veer..'lock_webpage'..msg.chat_id_) then
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send web link \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ ممنوع ارسال روابط الويب   \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif msg.text:match("#[%a%d_]+") and redis:get(veer..'lock_tag'..msg.chat_id_) then
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send tag \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ ممنوع ارسال التاك  \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif msg.text:match("@[%a%d_]+")  and redis:get(veer..'lock_username'..msg.chat_id_) then
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send username \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ ممنوع ارسال المعرف   \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif not msg.textEntityTypeBold and (msg.textEntityTypeBold or msg.textEntityTypeItalic) and redis:get(veer..'lock_markdown'..msg.chat_id_) then 
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send markdown \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ ممنوع ارسال الماركدوان  \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif msg.textEntityTypeTextUrl and redis:get(veer..'lock_webpage'..msg.chat_id_) then
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send web page \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦  .ممنوع ارسال روابط الويب   \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
end 
elseif msg.content_.ID == "MessageUnsupported" and redis:get(veer..'mute_video'..msg.chat_id_) then -- قفل الفيديو
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send video \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا ممنوع ارسال الفيديو كام \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif msg.content_.ID == "MessagePhoto" then
if redis:get(veer..'mute_photo'..msg.chat_id_)  then -- قفل الصور
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send photo \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا ممنوع ارسال الصور  \n📛",12,utf8.len(USERNAME))
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif redis:get(veer..':tqeed_photo:'..msg.chat_id_) then
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m The user resctricted becuse send photo \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
Restrict(arg.chat_id_,arg.sender_user_id_,3)
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
end
elseif msg.content_.ID == "MessageVideo" then
if redis:get(veer..'mute_video'..msg.chat_id_) then -- قفل الفيديو
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send vedio \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا ممنوع ارسال الفيديو  \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif redis:get(veer..':tqeed_video:'..msg.chat_id_) then
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m The user restricted becuse send video \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'??*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
Restrict(arg.chat_id_,arg.sender_user_id_,3)
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
end
elseif msg.content_.ID == "MessageDocument" and redis:get(veer..'mute_document'..msg.chat_id_) then -- قفل الملفات
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send file \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا ممنوع ارسال الملفات  \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif msg.content_.ID == "MessageSticker" and redis:get(veer..'mute_sticker'..msg.chat_id_) then --قفل الملصقات
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send sticker \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا ممنوع ارسال الملصقات  \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif msg.content_.ID == "MessageAnimation" then
if redis:get(veer..'mute_gif'..msg.chat_id_) then -- قفل المتحركه
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send gif \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا ممنوع ارسال الصور المتحركه  \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif redis:get(veer..':tqeed_gif:'..msg.chat_id_) then
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m The user restricted becuse send gif \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
Restrict(arg.chat_id_,arg.sender_user_id_,3)
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
end
elseif msg.content_.ID == "MessageContact" and redis:get(veer..'mute_contact'..msg.chat_id_) then -- قفل الجهات
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send Contact \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME..'\n📛¦ عذرا ممنوع ارسال جهات الاتصال  \n📛',12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif msg.content_.ID == "MessageLocation" and redis:get(veer..'mute_location'..msg.chat_id_) then -- قفل الموقع
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send location \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا ممنوع ارسال الموقع  \n📛",12,utf8.len(USERNAME))
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif msg.content_.ID == "MessageVoice" and redis:get(veer..'mute_voice'..msg.chat_id_) then -- قفل البصمات
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send voice \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا ممنوع ارسال البصمات  \n📛",12,utf8.len(USERNAME))
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif msg.content_.ID == "MessageGame" and redis:get(veer..'mute_game'..msg.chat_id_) then -- قفل الالعاب
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send game \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')     
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا ممنوع لعب الالعاب  \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif msg.content_.ID == "MessageAudio" and redis:get(veer..'mute_audio'..msg.chat_id_) then -- قفل الصوت
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send audio \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا ممنوع ارسال الصوت  \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif msg.reply_markup and  msg.reply_markup.ID == "replyMarkupInlineKeyboard" and redis:get(veer..'mute_keyboard'..msg.chat_id_) then -- كيبورد
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send keyboard \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا الكيبورد مقفول  \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
end

if msg.content_.caption_ then -- الرسايل الي بالكابشن
if (msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") 
or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") 
or msg.content_.caption_:match("[Tt].[Mm][Ee]/") 
or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") 
or msg.content_.caption_:match(".[Pp][Ee]")) 
and redis:get(veer..'lock_link'..msg.chat_id_) then
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send link caption \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا ممنوع ارسال الروابط  \n📛",12,utf8.len(USERNAME)) 
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif (msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") 
or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") 
or msg.content_.caption_:match("[Ww][Ww][Ww].") 
or msg.content_.caption_:match(".[Cc][Oo][Mm]")) 
and redis:get(veer..'lock_webpage'..msg.chat_id_) then
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send webpage caption \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا ممنوع ارسال روابط الويب  \n📛",12,utf8.len(USERNAME))
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
elseif msg.content_.caption_:match("@[%a%d_]+") and redis:get(veer..'lock_username'..msg.chat_id_) then
Del_msg(msg.chat_id_,msg.id_,function(arg,data)
print("\27[1;31m Msg Del becuse send username caption \27[0m")
if data.ID == "Error" and data.code_ == 6 then
return sendMsg(arg.chat_id_,arg.id_,'📛*¦* لا يمكنني مسح الرساله المخالفه .\n🎟*¦* لست مشرف او ليس لدي صلاحيه  الحذف \n ❕')    
end
if redis:get(veer..'lock_woring'..arg.chat_id_) then
GetUserID(arg.sender_user_id_,function(arg,data)
if data.username_ then USERNAME = '@'..data.username_ else USERNAME = FlterName(data) end
SendMention(arg.chat_id_,data.id_,arg.id_,"👤¦ العضو » "..USERNAME.."\n📛¦ عذرا ممنوع ارسال التاك او المعرف  \n📛",12,utf8.len(USERNAME))
end,{chat_id_=arg.chat_id_,id_=arg.id_})
end 
end,{chat_id_=msg.chat_id_,id_=msg.id_,sender_user_id_=msg.sender_user_id_})
return false
end 

end --========{ End if } ======

end 
SaveNumMsg(msg)
------------------------------{ Start Replay Send }------------------------

if msg.text and redis:get(veer..'replay'..msg.chat_id_) then

local Replay = false

Replay = redis:hget(veer..'replay:all',msg.text)

if Replay then
sendMsg(msg.chat_id_,msg.id_,Replay)
return false
end

Replay = redis:hget(veer..'replay:'..msg.chat_id_,msg.text)
if Replay then 
sendMsg(msg.chat_id_,msg.id_,Replay) 
return false
end

Replay = redis:hget(veer..'replay_photo:group:',msg.text)
if Replay then 
Caption = redis:hget(veer..':caption_replay:'..msg.chat_id_,msg.text)
sendPhoto(msg.chat_id_,msg.id_,Replay,Caption)  
return false
end

Replay = redis:hget(veer..'replay_voice:group:',msg.text)
if Replay then 
Caption = redis:hget(veer..':caption_replay:'..msg.chat_id_,msg.text)
sendVoice(msg.chat_id_,msg.id_,Replay,Caption)
return false
end

Replay = redis:hget(veer..'replay_animation:group:',msg.text)
if Replay then 
Caption = redis:hget(veer..':caption_replay:'..msg.chat_id_,msg.text)
sendAnimation(msg.chat_id_,msg.id_,Replay,Caption)  
return false
end

Replay = redis:hget(veer..'replay_audio:group:',msg.text)
if Replay then 
Caption = redis:hget(veer..':caption_replay:'..msg.chat_id_,msg.text)
sendAudio(msg.chat_id_,msg.id_,Replay,"",Caption)  
return false
end

Replay = redis:hget(veer..'replay_sticker:group:',msg.text)
if Replay then 
sendSticker(msg.chat_id_,msg.id_,Replay)  
return false
end

Replay = redis:hget(veer..'replay_video:group:',msg.text)
if Replay then 
Caption = redis:hget(veer..':caption_replay:'..msg.chat_id_,msg.text)
sendVideo(msg.chat_id_,msg.id_,Replay,Caption)
return false
end

Replay = redis:hget(veer..'replay_photo:group:'..msg.chat_id_,msg.text)
if Replay then 
Caption = redis:hget(veer..':caption_replay:'..msg.chat_id_,msg.text)
sendPhoto(msg.chat_id_,msg.id_,Replay,Caption)  
return false
end

Replay = redis:hget(veer..'replay_voice:group:'..msg.chat_id_,msg.text)
if Replay then 
Caption = redis:hget(veer..':caption_replay:'..msg.chat_id_,msg.text)
sendVoice(msg.chat_id_,msg.id_,Replay,Caption)
return false
end

Replay = redis:hget(veer..'replay_animation:group:'..msg.chat_id_,msg.text)
if Replay then 
Caption = redis:hget(veer..':caption_replay:'..msg.chat_id_,msg.text)
sendAnimation(msg.chat_id_,msg.id_,Replay,Caption)  
return false
end

Replay = redis:hget(veer..'replay_audio:group:'..msg.chat_id_,msg.text)
if Replay then 
Caption = redis:hget(veer..':caption_replay:'..msg.chat_id_,msg.text)
sendAudio(msg.chat_id_,msg.id_,Replay,"",Caption)  
return false
end

Replay = redis:hget(veer..'replay_sticker:group:'..msg.chat_id_,msg.text)
if Replay then 
sendSticker(msg.chat_id_,msg.id_,Replay)  
return false
end

Replay = redis:hget(veer..'replay_video:group:'..msg.chat_id_,msg.text)
if Replay then 
Caption = redis:hget(veer..':caption_replay:'..msg.chat_id_,msg.text)
sendVideo(msg.chat_id_,msg.id_,Replay,Caption)
return false
end

if not Replay then

--================================{{  Reply Bot  }} ===================================

local su = {
"امرني",
"تفضل معك ياقوت",
"امرني"}
local ss97 = {
"تفضل","امرني",
"تفضل","نعم معك ياقوت",
}
elseif Text=="اريد رابط الحذف" or Text=="اريد رابط حذف" or Text=="رابط حذف" or Text=="رابط الحذف" then
return sendMsg(msg.chat_id_,msg.id_,[[
🌿*¦* رابط حذف حـساب التيليگرام ↯
📛¦ لتتندم فڪر قبل
👨🏽‍⚖️¦ بالتـوفيـق عزيزي ...
🚸 ¦ـ  https://telegram.org/deactivate
]] )
--=====================================
if msg.Admin and redis:get(veer..'CheckExpire::'..msg.chat_id_) then
local ExpireDate = redis:ttl(veer..'ExpireDate:'..msg.chat_id_)
SUDO_USER = redis:hgetall(veer..'username:'..SUDO_ID).username
if SUDO_USER:match('@[%a%d_]+') then 
SUDO_USER = "\n👨🏾‍🔧¦ راسل المطور للتجديد "..SUDO_USER
else
SUDO_USER = ""
end
if not ExpireDate and not msg.SudoUser then
rem_data_group(msg.chat_id_)
sendMsg(SUDO_ID,0,'🕵🏼️‍♀️¦ انتهى الاشتراك في احد المجموعات ✋🏿\n👨🏾‍🔧¦ المجموعه : '..FlterName(redis:get(veer..'group:name'..msg.chat_id_))..'🍃\n💂🏻‍♀️¦ ايدي : '..msg.chat_id_)
sendMsg(msg.chat_id_,0,'🕵🏼️‍♀️¦ انتهى الاشتراك البوت✋🏿\n💂🏻‍♀️¦ سوف اغادر المجموعه فرصه سعيده 👋🏿'..SUDO_USER..' 🍃')
return StatusLeft(msg.chat_id_,our_id)
else
local DaysEx = (redis:ttl(veer..'ExpireDate:'..msg.chat_id_) / 86400)
if tonumber(DaysEx) > 0.208 and ExpireDate ~= -1 and msg.Admin then
if tonumber(DaysEx + 1) == 1 and not msg.SudoUser then
sendMsg(msg.chat_id_,'🕵🏼️‍♀️¦ باقي يوم واحد وينتهي الاشتراك ✋🏿\n '..SUDO_USER..'\n📛')
end 
end 
end
end

------------------------------{ End Checking CheckExpire }------------------------


end 


return {
Veer = {
"^(تقييد)$",
"^(تقييد) (%d+)$",
"^(تقييد) (@[%a%d_]+)$",
"^(فك التقييد)$",
"^(فك التقييد) (%d+)$",
"^(فك التقييد) (@[%a%d_]+)$",
"^(فك تقييد)$",
"^(فك تقييد) (%d+)$",
"^(فك تقييد) (@[%a%d_]+)$",
"^(ضع شرط التفعيل) (%d+)$",
"^(التفاعل)$",
"^(التفاعل) (@[%a%d_]+)$",
"^([iI][dD])$",
"^(ايدي)$",
"^(ايدي) (@[%a%d_]+)$",
"^(كشف)$",
"^(كشف) (%d+)$",
"^(كشف) (-%d+)$",
"^(كشف) (@[%a%d_]+)$",
'^(رفع مميز)$',
'^(رفع مميز) (@[%a%d_]+)$',
'^(رفع مميز) (%d+)$',
'^(تنزيل مميز)$',
'^(تنزيل مميز) (@[%a%d_]+)$',
'^(تنزيل مميز) (%d+)$',
'^(رفع مشرف)$',
'^(رفع مشرف) (@[%a%d_]+)$',
'^(رفع ادمن)$',
'^(رفع ادمن) (@[%a%d_]+)$',
'^(رفع ادمن) (%d+)$',
'^(تنزيل ادمن)$',
'^(تنزيل ادمن) (@[%a%d_]+)$',
'^(تنزيل ادمن) (%d+)$', 
'^(رفع المدير)$',
'^(رفع مدير)$', 
'^(رفع مدير) (@[%a%d_]+)$',
'^(رفع المدير) (@[%a%d_]+)$',
'^(رفع المدير) (%d+)$',
'^(رفع مدير) (%d+)$',
'^(رفع منشى)$',
'^(رفع منشئ)$',
'^(رفع منشئ) (@[%a%d_]+)$',
'^(رفع منشى) (@[%a%d_]+)$',
'^(تنزيل منشئ)$',
'^(تنزيل منشى)$',
'^(تنزيل منشئ) (%d+)$',
'^(تنزيل منشى) (%d+)$',
'^(تنزيل منشى) (@[%a%d_]+)$',
'^(تنزيل منشئ) (@[%a%d_]+)$',
'^(تنزيل المدير)$',
'^(تنزيل مدير)$',
'^(تنزيل مدير) (@[%a%d_]+)$',
'^(تنزيل المدير) (@[%a%d_]+)$',
'^(تنزيل المدير) (%d+)$',
'^(تنزيل مدير) (%d+)$',
'^(قفل) (.+)$',
'^(فتح) (.+)$',
'^(تفعيل)$',
'^(تفعيل) (.+)$',
'^(تعطيل)$',
'^(تعطيل) (.+)$',
'^(ضع تكرار) (%d+)$',
"^(مسح)$",
"^(مسح) (.+)$",
'^(منع) (.+)$',
'^(الغاء منع) (.+)$',
'^(كلهم) (.+)$',
"^(حظر عام)$",
"^(حظر عام) (@[%a%d_]+)$",
"^(حظر عام) (%d+)$",
"^(الغاء العام)$",
"^(الغاء العام) (@[%a%d_]+)$",
"^(الغاء العام) (%d+)$",
"^(الغاء عام)$",
"^(الغاء عام) (@[%a%d_]+)$",
"^(الغاء عام) (%d+)$",
"^(حظر)$",
"^(حظر) (@[%a%d_]+)$",
"^(حظر) (%d+)$",
"^(الغاء الحظر)$", 
"^(الغاء الحظر) (@[%a%d_]+)$",
"^(الغاء الحظر) (%d+)$",
"^(الغاء حظر)$", 
"^(الغاء حظر) (@[%a%d_]+)$",
"^(الغاء حظر) (%d+)$",
"^(طرد)$",
"^(طرد) (@[%a%d_]+)$",
"^(طرد) (%d+)$",
"^(كتم)$",
"^(كتم) (@[%a%d_]+)$",
"^(كتم) (%d+)$",
"^(الغاء الكتم)$",
"^(الغاء الكتم) (@[%a%d_]+)$",
"^(الغاء الكتم) (%d+)$",
"^(الغاء كتم)$",
"^(الغاء كتم) (@[%a%d_]+)$",
"^(الغاء كتم) (%d+)$",
"^(رفع مطور)$",
"^(رفع مطور) (@[%a%d_]+)$",
"^(رفع مطور) (%d+)$",
"^(تنزيل مطور)$",
"^(تنزيل مطور) (%d+)$",
"^(تنزيل مطور) (@[%a%d_]+)$",
"^(الاشتراك) ([123])$",
"^(الاشتراك)$",
"^(شحن) (%d+)$",
"^(المجموعه)$",
"^(كشف البوت)$",
"^(انشاء رابط)$",
"^(ضع الرابط)$",
"^(تثبيت)$",
"^(الغاء التثبيت)$",
"^(الغاء تثبيت)$",
"^(رابط)$",
"^(الرابط)$",
"^(وضع رابط)$",
"^(القوانين)$",
"^(ضع القوانين)$",
"^(ضع قوانين)$",
"^(ضع تكرار)$",
"^(ضع التكرار)$",
"^(الادمنيه)$",
"^(قائمه المنع)$",
"^(المنشئين)$",
"^(المدراء)$",
"^(المميزين)$",
"^(المكتومين)$",
"^(ضع الترحيب)$",
"^(الترحيب)$",
"^(تعين الايدي)$",
"^(تعيين الايدي)$",
"^(مسح الايدي)$",
"^(حذف الايدي)$",
"^(المحظورين)$",
"^(ضع اسم)$",
"^(ضع صوره)$",
"^(ضع وصف)$",
"^(طرد البوتات)$",
"^(كشف البوتات)$",
"^(طرد المحذوفين)$",
"^(رسائلي)$",
"^(رسايلي)$",
"^(احصائياتي)$",
"^(معلوماتي)$",
"^(موقعي)$",
"^(رفع الادمنيه)$",
"^(صوره الترحيب)$",
"^(ضع كليشه المطور)$",
"^(وضع كليشه المطور)$",
"^(حذف كليشه المطور)$",
"^(مسح كليشه المطور)$",
"^(المطور)$",
"^(شرط التفعيل)$",
"^(قائمة المجموعات 📊)$",
"^(قائمه المجموعات)$",
"^(المجموعات)$",
"^(الاذاعة والاشتراك الاجباري 🔊)$",
"^(اذاعه)$",
"^(اذاعه عام)$",
"^(اذاعه خاص)$",
"^(اذاعه عام بالتوجيه)$",
"^(اذاعه عام بالتوجيه 📣)$", 
"^(اذاعه خاص بالتوجيه)$",
"^(اذاعه خاص بالتوجيه 🗣)$", 
"^(اذاعه خاص 👤)$", 
"^(اذاعه عام 📢)$", 
"^(اذاعه 👥)$", 
"^(اذاعه بالتوجيه ↪️)$", 
"^(قائمه العام)$",
"^(قائمه العام 📜)$",
"^(المطورين)$",
"^(المطورين 🕹)$",
"^(تيست)$",
"^(شغال)$",
"^(test)$",
"^(ايدي 🆔)$",
"^(الاحصائيات)$",
"^(الاحصائيات 📈)$",
"^(اضف رد عام)$",
"^(اضف رد عام ➕)$",
"^(مسح الردود)$",
"^(مسح الردود العامه)$",
"^(ضع اسم للبوت)$",
"^(حذف صوره)$",
"^(مسح رد)$",
"^(الردود)$",
"^(الردود العامه)$",
"^(الردود العامه 🗨)$",
"^(اضف رد)$",
"^(تنظيف المجموعات)$",
"^(تنظيف المشتركين)$",
"^(تنظيف الوهمي)$",
"^(تنظيف الوهمي 🗑)$",
"^(رتبتي)$",
"^(ضع اسم للبوت ©)$",
"^(ضع صوره للترحيب 🌄)$",
"^(ضع صوره للترحيب)$",
"^(الحمايه)$",
"^(الاعدادات)$",
"^(الوسائط)$",
"^(الغاء الامر ✖️)$",
"^(الرتبه)$",
"^(الغاء)$",
"^(الساعه)$",
"^(التاريخ)$",
"^(متجر الملفات)$",
"^(الملفات 🗂)$",
"^(/files)$",
"^(/[Ss]tore)$",
"^(الملفات)$",
"^([Ss][pP]) ([%a%d_]+.lua)$", 
"^([dD][pP]) ([%a%d_]+.lua)$", 
"^(server)$",
"^(السيرفر)$",
"^(نسخه احتياطيه للمجموعات)$",
"^(السيرفر 📟)$",
"^(نسخه احتياطيه للمجموعات 📦)$",
"^(رفع نسخه الاحتياطيه)$", 
"^(تفعيل الاشتراك الاجباري)$", 
"^(تعطيل الاشتراك الاجباري)$", 
"^(تغيير الاشتراك الاجباري)$", 
"^(الاشتراك الاجباري)$", 
"^(تفعيل الاشتراك الاجباري 🔈)$", 
"^(تعطيل الاشتراك الاجباري 🔇)$", 
"^(تغيير الاشتراك الاجباري 🖊)$", 
"^(الاشتراك الاجباري 🔊)$", 
"^(تفعيل اطردني)$", 
"^(تعطيل اطردني)$", 
"^(تاك للكل)$",
"^(تنزيل الكل)$",
"^(مغادره)$", 
"^(احظرني)$", 
"^(اطردني)$", 
"^(جهاتي)$", 
"^(الغاء)$", 

"^(شغال)$",
"^(م المطور)$", 
"^(اوامر الرد)$",
"^(اوامر الملفات)$",
"^(الاوامر)$",
"^(م1)$",
"^(م2)$",
"^(م3)$",


 
 
 },
 iVeer = iVeer,
 dVeer = dVeer,
 }
