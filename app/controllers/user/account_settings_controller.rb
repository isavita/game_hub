class User::AccountSettingsController < ApplicationController
  def edit_personal_info
    @user = current_user
  end

  def update_personal_info
    if current_user.update_attributes(personal_info_permitted_params)
      # TODO: Add some notification for a success!
    else
      # TODO: Add some notification for errors!
    end

    redirect_to root_path
  end

  def edit_profile_info
    @user = current_user
  end

  def update_profile_info
    if current_user.update_attributes(profile_info_permitted_params)      
      # TODO: Add some notification for a success!
    else
      # TODO: Add some notification for errors!
    end

    redirect_to root_path
  end

  private
  def personal_info_permitted_params
    params.require(:user).permit(:first_name, :middle_name, :last_name, :age)
  end

  def profile_info_permitted_params
    params.require(:user).permit(:nickname, :avatar, :clan)
  end
end