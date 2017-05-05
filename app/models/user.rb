class User < ApplicationRecord
  before_save { email.downcase! }
end
