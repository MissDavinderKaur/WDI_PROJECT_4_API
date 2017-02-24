User.destroy_all
Issue.destroy_all
Message.destroy_all

user1 = User.create!(alias: "MissDavinderKaur", email:"davinder@kaur.com", password:"password", password_confirmation:"password", city:"London", sector:"Banking and Finance")

user2 = User.create!(alias: "INeedHelp", email:"miss_davinder_kaur@hotmail.co.uk", password:"password", password_confirmation:"password", city:"London", sector:"Consulting")

user3 = User.create!(alias: "FeelingLost", email:"miss.davinder.kaur@gmail.com", password:"password", password_confirmation:"password", city:"London", sector:"Advertising")

issue1 = user1.issues.create!(title:"I am being overlooked promotion because I am a woman", category:"Sexism", active: true)

issue1.messages.create!(sender_id: user2.id, receiver_id: user1.id, msg_text:"What makes you say that?")

issue1.messages.create!(sender_id: user1.id, receiver_id: user2.id, msg_text:"My boss keeps \"joking\" that I will be leaving soon to get married and start a family")

issue1.messages.create!(sender_id: user2.id, receiver_id: user1.id, msg_text:"Have you made it clear that your personal and professional lives are completely seperate?")

issue1.messages.create!(sender_id: user1.id, receiver_id: user2.id, msg_text:"Yes, but I dont think it will change anything.")


issue2 = user2.issues.create!(title:"I think I am being treated differently because of the colour of my skin - my boss is so rude to me", category:"Racism", active: true)

issue2.messages.create!(sender_id: user1.id, receiver_id: user2.id, msg_text:"This is completely unacceptable")

issue2.messages.create!(sender_id: user3.id, receiver_id: user2.id, msg_text:"I agree with the message above - you need to report this")

issue2.messages.create!(sender_id: user2.id, receiver_id: user2.id, msg_text:"But I have just started at the company and I dont want to be seen as a trouble maker")

issue2.messages.create!(sender_id: user1.id, receiver_id: user2.id, msg_text:"I appreciate you are new to the company and it is all very daunting but you need to make it clear you do NOT like to be treated this way")

issue2.messages.create!(sender_id: user3.id, receiver_id: user2.id, msg_text:"The best time to make the rules is at the start! Pck your boss up on the behaviour and if it doesn't improve then you will need to speak to HR")

issue2.messages.create!(sender_id: user2.id, receiver_id: user2.id, msg_text:"Thank you for the advice - I will speak to my boss and let you know!")

issue2.messages.create!(sender_id: user3.id, receiver_id: user2.id, msg_text:"Please do!")



issue3 = user3.issues.create!(title:"I think I am being bullied - a colleague keeps making inappropriate comments about me", category:"Other", active: true)

issue2.messages.create!(sender_id: user1.id, receiver_id: user3.id, msg_text:"Bullying is wrong - what kind of comments are being made?")

issue4 = user2.issues.create!(title:"Someone keeps stealing my food from the fridge!!", category:"Other", active: true)

issue5 = user1.issues.create!(title:"I want to quit my job - I want to change my career!", category:"Other", active: true)

issue6 = user2.issues.create!(title:"It's my last day at work today - should I be relieved or cry?", category:"Other", active: true)
