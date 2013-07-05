class Survey < ActiveRecord::Base
  validates_presence_of :name
  has_many :questions
  belongs_to :user
end
