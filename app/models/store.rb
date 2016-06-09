class Store < ActiveRecord::Base
  has_many :deals
  has_many :store_users
  has_many :users, through: :store_users
end
