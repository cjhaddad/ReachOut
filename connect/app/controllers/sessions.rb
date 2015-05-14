get '/sessions/new' do

  erb :'sessions/new'
end

post '/sessions' do

  # redirect
end

delete 'sessions' do
  logout_user

  # redirect
end
