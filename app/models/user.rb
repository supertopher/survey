require 'bcrypt'

class User < ActiveRecord::Base
  has_many :surveys
  has_many :responses

  validates_presence_of :user_name
  validates_presence_of :password_hash

  include BCrypt
  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(params)
    user = User.find_by_user_name(params[:user_name])
    if user
      user.password == params[:password]
    else
      false
    end
  end

end