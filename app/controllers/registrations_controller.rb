class RegistrationsController < Devise::RegistrationsController

  private
  # Modify sign up params to include firt and last names.
  # When adding new parameters, need to edit views/devise/registrations/new to include new fields.
  # https://jacopretorius.net/2014/03/adding-custom-fields-to-your-devise-user-model-in-rails-4.html
  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def after_sign_up_path_for(resource_or_scope)
    root_path
  end

end
