class AfterSignupController < ApplicationController
  include Wicked::Wizard

  steps :personal_info, :nickname

  def show
    @user = current_user
    case step
    when :personal_info
      @user.update_attributes(params[:user])
    when :nickname      

    end
    render_wizard
  end
end
