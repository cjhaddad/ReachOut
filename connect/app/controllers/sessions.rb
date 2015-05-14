get '/sessions/new' do

  erb :'_login'
end

post '/sessions' do

  # redirect
end

delete 'sessions' do
  logout_user

  # redirect
end
