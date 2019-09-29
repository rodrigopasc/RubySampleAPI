class Credential < ApplicationRecord
  has_secure_password

  validates :username, :password_digest, presence: true
end
