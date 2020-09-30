require 'telegram_bot'
token = '1224080437:AAGgOHgIbvueBD2j_EGmadzm4TTyVmX1UgQ'
bot = TelegramBot.new(token: token)

bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
  command = message.get_command_for(bot)

  message.reply do |reply|
  case command
  when /start/i
    reply.text = "eh wahlau #{message.from.first_name}, wait for you so long already. come type in some phrases you've heard from fellow Singaporeans! else, /food gives you randomised suggestions of Singapore cuisines you must try!"
  when /food/i
    foodlist = ['nasi lemak: coconut rice, a slice of omelette, anchovies, a slice of cucumber and some chilli paste, uniquely packed in brown paper or banana leaf. maybe we steal from Malaysia one, idk...',
                'hainanese chicken rice: steamed chicken served with rice cooked in chicken stock. super fragrant and yummy !! steamed chicken> roasted chicken #sorrynotsorry',
                'laksa: rice noodles in spicy coconut curry soup with shrimp, fish cakes, egg and chicken meat. warms the cockles of your heart <3',
                 'satay: skewered grilled meat served with rice cake (ketupat), peanut sauce and cucumber-chili relish. can choose from pork, chicken, beef, mutton but MY personal favouriite is chicken~ ',
                 'bak kut teh: Pork rib soup infused with Chinese herbs and spices, seasoned with light and dark soy sauce then simmered for hours. got herbal kinds also, but Singaporeans like peppery one.',
                 'chilli crab: hard-shell crabs cooked in semi-thick gravy with a tomato chilli base. do not be weak... really not that spicy ok. best eaten with deep fried mantous!',
                 'char kuay teow: broad white noodles fried with black Soya sauce, bean sprouts, fish cake, clams and Chinese sausage. this must use wok cook one ok, if not no wok hey...',
                 'orh luak: my all time favourite. gg omelette mixed with flour and fried with a generous helping of small oysters garnished with coriander leaves, crispy bean sprouts, and a sweet, spicy sauce. best places give big big plump & juicy  oysters ;)',
                 'kaya toast: superior breakfast food. best paired with a cup of kopi and soft boiled eggs! (plugging in my favourite stall Yakun here)']
    reply.text = "#{foodlist.sample.capitalize}"
  when /shiok/i
    reply.text = "used to describe one’s feelings of excitement, or of anything that pleases them. eg: weather damn shiok today"
  when /sian/i
    reply.text = " for situations where you’re really bored and fed up. eg  The queue for the taxi is so long! So sian!"
  when /angmoh/i
    reply.text = "covers any fairer skinned individuals, and is generally not meant to be offensive."
  when /kiasu/i
    reply.text = "afraid to lose,  not used exclusively in competition-type settings, but in every context imaginable, whether it’s queueing to enter the train (the MRT) or getting to a destination on time. eg: The coach is 15 minutes away! Don’t be so kiasu lah!"
  when /makan/i
    reply.text = "to eat"
  when /kena/i
    reply.text = "affected by, usually used when one is complaining about something that happened to them. eg:  On my first day to UK, I kena the flu."
  when /chope/i
    reply.text = "reserving spaces in eateries. eg I’ve choped (past tense) the table with my tissue packet, so we can order our food now."
  when /siao/i
    reply.text = "crazy,used as a sarcastic reply when someone proclaims they’re going to attempt an impossible task or does something stupid. eg: You siao ah? "
  when /lah/i
    reply.text = "suffix to sentences that really does not translate to English."
  when /lah/i
    reply.text = "suffix to sentences that really does not translate to English."
  when /mah/i
    reply.text = "suffix to sentences that really does not translate to English."
  else
    reply.text = "this advanced level Singlish liao, go ask a Singaporean."
  end
  puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(bot)
  end
end
