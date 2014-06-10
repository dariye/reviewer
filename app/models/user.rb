class User < ActiveRecord::Base

  validates :email, :refresh_token, presence: true

end
