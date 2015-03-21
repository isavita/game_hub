class HomepagesController < ApplicationController  
  def homepage
  end

  def index
    root_path unless user_signed_in?
  end
end