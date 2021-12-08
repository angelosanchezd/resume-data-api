Rails.application.routes.draw do

=======
  # Students Routes
  get "/students" => "students#index"

  get "/students/:id" => "students#show"

  post "/students" => "students#create"

  patch "/students/:id" => "students#update"

  delete "/students/:id" => "students#destroy"
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Skill Routes
  get "/skills/:student_id" => "skills#index"
  get "/skills/show/:id" => "skills#show"
  post "/skills" => "skills#create"
  patch "/skills/:id" => "skills#update"
  delete "/skills/:id" => "skills#destroy"
  get "/experiences/:student_id" => "experiences#index"
  get "/experience/:id" => "experiences#show"
  post "experiences/create" => "experiences#create"
  post "experiences/update/:id" => "experiences#update"
  delete "experiences/delete/:id" => "experiences#delete"
end

