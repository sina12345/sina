do

  local function action_by_reply(extra, success, result)
    if result.from.username then
      user_name = '@'..result.from.username
    else
      user_name = ''
    end
    local text = result.from.peer_id
 send_large_msg(extra.receiver, 'شکایت شما برای کاربر @' ..result.from.username..' ثبت شد \nبه زودی اطلاعات مورد نیاز به شما ارسال میگردد ')
send_large_msg(extra.receiver, 'شکایت شما ثبت شد\nمتصدی پروند : ربات حفظ امنیت کیاوا\n\nوکیل پرونده : کیارش خطیب \n**دادگاه اجازهی حضور وکیل در پرونده را داد...')

  end

  local function run(msg, matches)
    if matches[1]:lower() == 'shak' and msg.reply_id then
      get_message(msg.reply_id, action_by_reply , {receiver=get_receiver(msg)})
    
    end
  end

  return {
    decription = 'shekaiate asan;)',
    usage = 'Easy shekaiat',
    patterns = {
      '^(شکایت)$',
    },
    run = run
  }

end
