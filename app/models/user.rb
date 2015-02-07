class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => [:create]
  validates :first_name, presence: true, :on => [:create]
  validates :last_name, presence: true, :on => [:create]
  validates :email, presence: true, :on => [:create]





 
end
