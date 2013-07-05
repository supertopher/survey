class Question < ActiveRecord::Base
  has_many :choices
  has_many :responses
  belongs_to :survey
  
 validates_presence_of :name
end
