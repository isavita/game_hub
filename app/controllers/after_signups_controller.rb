class AfterSignupsController < ApplicationController
  include Wicked::Wizard

  steps :personal_info, :nickname

  def show
    @user = current_user
    case step
    when :personal_info
    when :nickname      
    end
    render_wizard
  end

  def update
    @user = current_user
    @user.update_attributes(user_params)

    render_wizard @user
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :middle_name, :last_name, :age, :nickname, :clan, :avatar)
  end
end
