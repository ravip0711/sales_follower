class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to deal_preferences_path
    else
      redirect_to new_user_session_path
    end
  end

  def deal_preferences
    @stores = Store.all
    @my_stores = current_user.stores.all
  end
end
