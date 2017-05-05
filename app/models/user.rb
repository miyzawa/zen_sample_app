class User < ApplicationRecord
  before_save { email.downcase! }
  validates :email, presence: true, length: [ maximum: 50 ], format: [ with: VALID_EMAIL_REGEX ], uniqueness: { case_sensitive: false }
end
