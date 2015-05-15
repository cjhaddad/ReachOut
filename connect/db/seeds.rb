
User.create(username: "candice", password: "password", phone_number: "+13179858281")
User.create(username: "shannon", password: "password", phone_number: "+17083051838")
User.create(username: "logan", password: "password", phone_number: "+18473704680")

User.create(phone_number: "+11111111111")

Connection.create(seeker_id: 4, context: "I've been having very dangerous thoughts")
Connection.create(seeker_id: 4, context: "My dog died and I'm having a hard time with it")
Connection.create(seeker_id: 4, context: "I'd like to talk to a woman about something personal in my life")
Connection.create(seeker_id: 4, helper_id: 1, context: "Context of connection 4")

