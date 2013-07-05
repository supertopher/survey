get "/surveys/create/"  do
  
  erb :new_survey
end

post "/surveys/create/"  do
   puts "9" * 80
  puts params
  
  question = Question.create(name: params[:survey][:question])
  params[:survey][:choice].each_value do |choice|
    question.choices << Choice.create(name: choice)
  end  
  
  survey = Survey.create(name: params[:survey][:title])
  survey.questions << question

  redirect '/'
end