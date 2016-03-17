do

local function run(msg, matches)
  local bot_id = 193525002
    if matches[1] == '+leave' and is_admin(msg) then
       chat_del_user("channel#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    elseif msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_sudo(msg) then
      send_large_msg("channel#id"..msg.to.id, 'Thats My AUTOLEAVE \n Heh ,Blocked.', ok_cb, false)
      chat_del_user("channel#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
      block_user("user#id"..msg.from.id,ok_cb,false)
    end
end
end
 
return {
  patterns = {
    "^(+leave)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
