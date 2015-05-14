get '/connections' do

  erb :'connections/index'
end

get '/connections/new' do

  erb :'connections/new'
end


# creates connection and utilizes twilio api to send out text to helpers
post '/connections' do

  redirect '/connections/:id'
end

get '/connections/:id' do

  erb :'connections/show'
end

put '/connections/:id' do

# change :id below to interpolate specific connection id
  redirect '/connections/:id'
end

