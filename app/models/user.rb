class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :zxcvbnable

  def weak_words
    ['salesfollower', self.first_name, self.last_name, self.email]
  end
end
