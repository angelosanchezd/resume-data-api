Rails.application.routes.draw do
  get "/education/:student_id" => "educations#index"
  get "/education/:id" => "educations#show"
  post "/education" => "educations#create"
  patch "/education/:id" => "educations#update"
  delete "/education/:id" => "educations#destroy"
end
