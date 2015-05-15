get '/connections' do

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
  redirect "/connections/#{connection.id}"
end

get '/connections/:id' do
  @connection = Connection.find_by(id: params[:id])

  if logged_in?
    if @connection.helper_id == current_user_id
      erb :"partials/_secret_info"
    elsif @connection.helper_id == nil
      erb :"partials/_engage"
    elsif @connection.helper_id && @connection.helper_id != current_user_id
      erb :"partials/_taken"
    else
      redirect to "/"
    end
  else
    if @connection.helper_id == nil
      erb :"partials/_on_way"
    else
      erb :"partials/_assigned"
    end
  end
end

put '/connections/:id' do

# change :id below to interpolate specific connection id
  redirect '/connections/:id'
end

# use if wanting to delete connection TBD
# delete '/connections/:id' do

# end
