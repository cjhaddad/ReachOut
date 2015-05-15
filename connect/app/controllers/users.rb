get '/users/new' do
  erb :'users/new'
end

post "/users" do
  new_user = User.create(params[:user])
  if new_user.valid?
    new_user = User.authenticate(params[:user])
    if new_user
      store_user_login(new_user)
      redirect to "/connections"
    else
      @errors = "Sign up successfull but authentication failed; Please try logging in your new account"
      erb :"partials/_login"
    end
  else
    @errors = "Sign up failed; Please try again"
    erb :"users/new"
  end
end

# if we want a user/ helper profile page
# get '/users/:id' do

# end
