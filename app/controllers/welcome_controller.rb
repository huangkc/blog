class WelcomeController < ApplicationController
  
  def index
  	if logged_in?
  	@micropost = current_user.microposts.build if logged_in?
  	@feed_items = current_user.feed.paginate(page: params[:page])
  	end
  end

  def contact
  end
  
  def about
  end
end
