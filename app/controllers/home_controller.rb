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
    @my_stores = current_user.stores
  end

  def add_store
    params[:user][:store_ids].each do |store_id|
      current_user.stores << Store.where(id: store_id)
    end
    redirect_to :deal_preferences
  end

  def delete_store
    store = Store.where(id: params[:store_id])
    current_user.stores.delete(store)
    redirect_to :deal_preferences
  end
end
