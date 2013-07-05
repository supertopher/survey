class Response < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  belongs_to :choice
  
  validates_presence_of :response
end
