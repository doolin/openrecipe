class UsersController < ApplicationController
  
  def show
    @user   = User.find(params[:id])
  end

#=begin
  def index
    if user_signed_in?
      redirect_to users_path
    else
      redirect_to new_user_session_path
    end
  end
#=end
    
end