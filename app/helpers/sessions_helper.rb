module SessionsHelper
 
  def sign_in(user)
    self.current_user = user
  end
  def current_user
    @current_user ||= session[:user_id] && User.find_by_id(session[:user_id])
  end

  def signed_in?
    !current_user.nil?
  end

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to '/auth/google_oauth2', :notice => "You must be signed in to Review"
    end
  end

  def store_location
    session[:return_to] = request.url if request.get?
  end

  def current_user?(user)
    user == current_user
  end

  def current_user=(user)
    @current_user = user
  end

  def redirect_back_or(default)
    redirect_to session[:return_to] || default, :notice => "You've succesfully signed in with your NYU id"
    session.delete(:return_to)
  end
end
