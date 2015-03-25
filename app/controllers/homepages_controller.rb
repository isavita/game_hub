class HomepagesController < ApplicationController  
  def homepage
  end

  def index
    redirect_to :homepage unless user_signed_in?
  end
end