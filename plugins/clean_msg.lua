
local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'" pm akhir super group Delete shod', ok_cb, false)
  else
    send_msg(extra.chatid, 'tedad moshakhas pak shod', ok_cb, false)
  end
end
local function run(msg, matches)
  if matches[1] == 'clean' and is_owner(msg) then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 10000 or tonumber(matches[2]) < 1 then
        return "tedad bishtar az 1 mojaz ast"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
      return "faghad dar super group"
    end
  else
    return "shoma nmitavanid"
  end
end

return {
    patterns = {
        '^[!/#](clean) msg (%d*)$'
    },
    run = run
}

