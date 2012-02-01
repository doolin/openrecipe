class RegistrationsController < Devise::RegistrationsController

  protected
=begin
  def after_sign_up_path_for(resource)
    new_profile_path
  end
=end
end