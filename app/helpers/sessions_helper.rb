module SessionsHelper

  def log_in(user) 
    # stores a temporary cookie
    session[:user_id] = user.id
  end

  # returns the current logged in user if any
  def current_user
    # checks if the user exuts
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end


  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
end
