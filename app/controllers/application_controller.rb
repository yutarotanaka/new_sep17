class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def home
    @user = User.find_by(id:session[:user_id])
    if @user
      redirect_to("/users/#{@user.id}")
    else
      redirect_to("/signup")
    end
  end
  
end
