get '/sessions/new' do

  if request.xhr?
    erb :'partials/_login', layout: false
  else
    erb :'partials/_login'
  end
end

post "/sessions" do
  user = User.authenticate(params[:user])
  puts "hitting server"
  if user
    session[:user_id] = user.id

    if request.xhr?
      puts "request"
      @connections = Connection.where(helper: nil)
      erb :'connections/index', layout: false
    else
      puts "no request"
      redirect to "/connections"
    end
  else
    @errors = "Log in failed; Please try again"
    erb :"partials/_login"
  end
end

delete "/sessions" do
  logout_user
  redirect to "/"
end
