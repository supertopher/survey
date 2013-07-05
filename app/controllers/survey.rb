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

  survey = Survey.create(name: params[:survey][:title], user_id: session[:user])
  survey.questions << question

  redirect "/surveys/#{survey.id}"
end

get "/surveys/:id" do
  @survey = Survey.find(params[:id])
  erb :survey_by_id
end

get "/surveys" do

  erb :all_surveys
end