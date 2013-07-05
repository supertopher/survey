require 'bcrypt'


class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :comment_votes
  has_many :post_votes



  include BCrypt
  # Remember to create a migration!
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