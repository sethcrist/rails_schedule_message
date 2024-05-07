# email:string
# password_digest:string

# password:string virtual
# password_confirmation:string virtual
# will only interact with password and password_confirmation
class User < ApplicationRecord
  has_many :twitter_accounts
  has_many :tweets

  has_secure_password

  # email address Start with one or more characters that are not "at" symbols or whitespace ([^@\s]+)
  # Contain exactly one "at" symbol (@).
  # End with one or more characters that are not "at" symbols or whitespace ([^@\s]+), following the "at" symbol
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
end
