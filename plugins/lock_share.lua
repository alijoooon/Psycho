
local function run(msg, matches)
    if is_momod(msg) then
        return msg
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_share'] then
                lock_share = data[tostring(msg.to.id)]['settings']['lock_share']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_share == "yes" then
        send_large_msg(get_receiver(msg), "User @" .. msg.from.username .. " number share is not allowed here!")
        chat_del_user(chat, user, ok_cb, true)
    end
end
 
return {
description = "lockshare",
usage = {
moderator = {
"!<lock/unlock> share : sharecontact is allowed or not allowed to group" },
},
  patterns = {
  "%[(contact)%]"
 },
  run = run
}

