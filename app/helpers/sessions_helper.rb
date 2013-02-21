module SessionsHelper

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end

  def authenticate(user, password)
    if user && user.authenticate(password)
      session[:user_id] = user.id
      true
    else
      false
    end
  end

end
