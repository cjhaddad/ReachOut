get '/connections' do
  @connections = Connection.where.not(username: nil)
  erb :'connections/index'
end

get '/connections/new' do

  erb :'connections/new'
end


# creates connection and utilizes twilio api to send out text to helpers
post '/connections' do
  seeker = User.create(phone_number: params[:phone_number])
  helper_phone_numbers = User.where.not(username:nil).pluck(:phone_number)

  connection = seeker.build_seek_connection(context: params[:context])
  connection.save

  User.text_helpers("THIS IS WHERE THE LINK GOES", helper_phone_numbers)

  redirect "/connections/#{connection.id}"
end

get '/connections/:id' do

  erb :'connections/show'
end

put '/connections/:id' do

# change :id below to interpolate specific connection id
  redirect '/connections/:id'
end

# use if wanting to delete connection TBD
# delete '/connections/:id' do

# end
