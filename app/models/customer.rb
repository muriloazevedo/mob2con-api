class Customer < ApplicationRecord
  has_many :orders

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP },
                    uniqueness: { case_sensitive: false },
                    presence: true
end
