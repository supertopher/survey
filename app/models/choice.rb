class Choice < ActiveRecord::Base
  # Remember to create a migration!
   validates_presence_of :name
end
