User.destroy_all
Issue.destroy_all
Message.destroy_all

user1 = User.create!(alias: "MissDavinderKaur", email:"davinder@kaur.com", password:"password", password_confirmation:"password", city:"London", sector:"Financial Services")

user2 = User.create!(alias: "MissHarpreetKaur", email:"harpreet@kaur.com", password:"password", password_confirmation:"password", city:"London", sector:"Consulting Services")

issue1 = Issue.create!(title:"My super serious issue")

message1 = Message.create!()


t.text     "title"
t.integer  "messages_id", default: [],              array: true
t.index ["messages_id"], name: "index_issues_on_messages_id", using: :btree







t.string   "category"
t.text     "messageText"
t.integer  "sender_id"
t.integer  "receiver_id"



album1 = Album.create!(title: "Lifestylez ov da Poor & Dangerous", description: "Oh dear.", release_date: DateTime.parse("28/03/1995"),  owner_id: artist1.id)

# Check the relationships
# artist1.owner
# artist1.albums_as_owner

artist2 = Artist.create!(name: "Jay Z")

# Automatically assign the album_id to the track using the relationship
track1 = album1.tracks.create!(title: "Da Graveyard", number: 8, duration: 5.24)

# Assign the artists to the track
track1.artists << artist1
track1.artists << artist2

# Check the relationships
# artist1.tracks
# artist2.tracks
