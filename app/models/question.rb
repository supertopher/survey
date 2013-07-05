class Question < ActiveRecord::Base
 validates_presence_of :name
  # Remember to create a migration!
  has_many :choices
  belongs_to :survey
end
