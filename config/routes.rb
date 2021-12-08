Rails.application.routes.draw do
  get "/experiences/:student_id" => "experiences#index"
  get "/experience/:id" => "experiences#show"
  post "/experiences/create" => "experiences#create"
  patch "/experiences/update/:id" => "experiences#update"
  delete "/experiences/delete/:id" => "experiences#delete"
end
