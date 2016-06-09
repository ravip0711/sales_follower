class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :zxcvbnable

  def weak_words
    ['salesfollower', self.first_name, self.last_name, self.email]
  end

  has_many :deal_users
  has_many :deals, through: :deal_users
  has_many :store_users
  has_many :stores, through: :store_users
end
