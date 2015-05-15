get '/sessions/new' do
  erb :'partials/_login'
end

post "/sessions" do
  user = User.authenticate(params[:user])
  if user
    store_user_login(user)
    redirect to "/connections"
  else
    @errors = "Log in failed; Please try again"
    erb :"partials/_login"
  end
end

delete "/sessions/logout" do
  logout_user
  redirect to "/login"
end
