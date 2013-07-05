require 'faker'

10.times do
  User.create(user_name: Faker::Name.name, password_hash: "password")
end

