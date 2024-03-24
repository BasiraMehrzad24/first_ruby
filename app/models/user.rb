class User < ApplicationRecord
has_secure_password
validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i , messeage: "must be vaild email" }
end
