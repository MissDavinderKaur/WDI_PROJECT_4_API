User.destroy_all
Issue.destroy_all
Message.destroy_all

user1 = User.create!(alias: "MissDavinderKaur", email:"davinder@kaur.com", password:"password", password_confirmation:"password", city:"London", sector:"Financial Services")

user2 = User.create!(alias: "MissHarpreetKaur", email:"harpreet@kaur.com", password:"password", password_confirmation:"password", city:"London", sector:"Consulting Services")

issue1 = user1.issues.create!(title:"My super serious sexism issue", category:"sexism", active: true)

issue1.messages.create!(sender_id: user2.id, receiver_id: user1.id, msg_text:"Some advice")

issue1.messages.create!(sender_id: user1.id, receiver_id: user1.id, msg_text:"Thank you for the advice")

issue2 = user1.issues.create!(title:"Another super serious issue", category:"racism", active: true)

issue2.messages.create!(sender_id: user2.id, receiver_id: user1.id, msg_text:"Some good advice")

issue2.messages.create!(sender_id: user1.id, receiver_id: user1.id, msg_text:"Thank you for the good advice")
