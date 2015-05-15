
User.create(username: "candice", password: "password", phone_number: "+13179858281")
User.create(username: "shannon", password: "password", phone_number: "+17083051838")
User.create(username: "logan", password: "password", phone_number: "+18473704680")

User.create(phone_number: "+11111111111")

Connection.create(seeker_id: 4, context: "Context of connection 1")
Connection.create(seeker_id: 4, context: "Context of connection 2")
Connection.create(seeker_id: 4, context: "Context of connection 3")
Connection.create(seeker_id: 4, helper_id: 1, context: "Context of connection 4")

