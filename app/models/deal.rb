class Deal < ActiveRecord::Base
  has_many :deal_users
  has_many :users, through: :deal_users
  belongs_to :store
end
