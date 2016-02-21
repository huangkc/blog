class WelcomeController < ApplicationController
  def index
  	@micropost = current_user.microposts.build if logged_in?
  end

  def contact
  end
  
  def about
  end
end
