class User < ActiveRecord::Base

  has_secure_password

  before_save { |user| user.email = email.downcase }
  
  validates :email, :presence => true, :uniqueness => true
  validates_uniqueness_of :email, :case_sensitive => false
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :password, :confirmation => true, length: { minimum: 8 }
  validates :password_confirmation, :presence => true

end
