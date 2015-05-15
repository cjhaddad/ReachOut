get '/sessions/new' do
  erb :'partials/_login'
end

post "/sessions" do
  user = User.authenticate(params[:user])
  if user
    session[:user_id] = user.id
    redirect to "/connections"
  else
    @errors = "Log in failed; Please try again"
    erb :"partials/_login"
  end
end

delete "/sessions" do
  logout_user
  redirect to "/"
end
