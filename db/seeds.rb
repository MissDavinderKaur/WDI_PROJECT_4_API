User.destroy_all
Issue.destroy_all
Message.destroy_all

user1 = User.create!(alias: "MissDavinderKaur", email:"davinder@kaur.com", password:"password", password_confirmation:"password", city:"London", sector:"Banking and Finance")

user2 = User.create!(alias: "MissHarpreetKaur", email:"miss_davinder_kaur@hotmail.co.uk", password:"password", password_confirmation:"password", city:"Brimingham", sector:"Consulting")


issue1 = user1.issues.create!(title:"My super serious sexism issue", category:"Sexism", active: true)

issue1.messages.create!(sender_id: user2.id, receiver_id: user1.id, msg_text:"Some advice")

issue1.messages.create!(sender_id: user1.id, receiver_id: user1.id, msg_text:"Thank you for the advice")

issue2 = user1.issues.create!(title:"Another super serious issue", category:"Racism", active: true)

issue2.messages.create!(sender_id: user2.id, receiver_id: user1.id, msg_text:"Some good advice")

issue2.messages.create!(sender_id: user1.id, receiver_id: user1.id, msg_text:"Thank you for the good advice")


issue3 = user2.issues.create!(title:"My racism issue", category:"Racism", active: true)

issue3.messages.create!(sender_id: user1.id, receiver_id: user2.id, msg_text:"Some advice")

issue3.messages.create!(sender_id: user2.id, receiver_id: user1.id, msg_text:"Thank you for the advice")

issue4 = user2.issues.create!(title:"Another ageism issue", category:"Ageism", active: true)

issue4.messages.create!(sender_id: user1.id, receiver_id: user2.id, msg_text:"Some good advice")

issue4.messages.create!(sender_id: user2.id, receiver_id: user1.id, msg_text:"Thank you for the good advice")

user3 = User.create!(alias: "Test User 1", email:"miss.davinder.kaur@gmail.com", password:"password", password_confirmation:"password", city:"London", sector:"Advertising")

user4 = User.create!(alias: "Test User 2", email:"test2@test2.com", password:"password", password_confirmation:"password", city:"London", sector:"Clothing and Fashion")

user5 = User.create!(alias: "Test User 3", email:"test3@test3.com", password:"password", password_confirmation:"password", city:"London", sector:"Healthcare Professionals")

user6 = User.create!(alias: "Test User 4", email:"test4@test4.com", password:"password", password_confirmation:"password", city:"London", sector:"Teachers")
