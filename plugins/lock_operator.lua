local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_operator'] then
                lock_operator = data[tostring(msg.to.id)]['settings']['lock_tag']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_operator == "yes" then
        delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
    "ایرانسل(.*)",
    "همراه اول(.*)",
    "تالیا(.*)",
    "رایتل(.*) ",
    "شارژ(.*)",
    "شارژ مستقیم(.*)",
    "شارژ غیرمستقیم(.*)",
    "شارژ بریز(.*)",
    "سایت شارژ(.*)",
    "سایت(.*)",
    "شارژ",
    "همراه اول",
    "تالیا",
    "ایرانسل",
    "رایتل",
    "شارژ مستقیم",
    "شارژ غیرمستقیم",
    "سایت شارژ",
    "شارژ بریز",
  },
  run = run
}

