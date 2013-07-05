get "/surveys/create/"  do
  
  erb :new_survey
end

post "/surveys/create/"  do
  puts "9" * 80
  puts params
  
end