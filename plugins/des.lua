do
function run(msg, matches)
  return "Group Id : "..msg.from.id.."\nGroup Name : "..msg.to.title.."\nFull Name : "..(msg.from.first_name or '').."\nFirst Name : "..(msg.from.first_name or '').."\nLast Name : "..(msg.from.last_name or '').."\nYour Id : "..msg.from.id.."\nYour Username : @"..(msg.from.username or '').."\nPhone Number : +"..(msg.from.phone or '')
end
return {
  description = "", 
  usage = "",
  patterns = {
    "^[!/#][Dd]es$",
  },
  run = run
}
end
