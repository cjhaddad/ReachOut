helpers do

  def store_user_login(user)
    session[:current_user] = user.id
  end


  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def current_user_id
    session[:user_id]
  end

  def logged_in?
    session[:user_id] != nil
  end

  def login_user
    session[:user_id] = current_user.id
  end

  def logout_user
    session[:user_id] = nil
  end
end
