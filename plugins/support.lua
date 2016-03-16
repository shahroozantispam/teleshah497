do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = 120816252

  if matches[1] == "support" then
    user = 'user#id'..user
  end

  -- The message must come from a chat group
  if msg.to.type == 'channel' then
    local chat = 'channel#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return "support added to group"
  else 
    return 'This isnt a chat group!'
  end

end

return {
  description = "support", 
  patterns = {
    "^[!/#](support)$"
  }, 
  run = run 
}

end
