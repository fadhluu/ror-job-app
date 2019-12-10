class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, length: {minimum:5, maximum:25}
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, length: {minimum:5}

end
