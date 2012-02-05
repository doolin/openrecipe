class UsersController < ApplicationController
  
  # I don't like this, it smells...
  def show
    if user_signed_in?
      @user   = User.find(current_user.id)
    else
      @user   = User.find(params[:id])
    end
    #@projects = @member.projects
    #@profile  = @member.profile
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