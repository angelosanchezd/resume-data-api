Rails.application.routes.draw do
  # Education Routes
  get "/education/:student_id" => "educations#index"
  get "/education/show/:id" => "educations#show"
  post "/education" => "educations#create"
  patch "/education/:id" => "educations#update"
  delete "/education/:id" => "educations#destroy"

  get "/capstones/:student_id" => "capstones#index"
  get "/capstones/show/:id" => "capstones#show"
  post "/capstones" => "capstones#create"
  patch "/capstones/:id" => "capstones#update"
  delete "/capstones/:id" => "capstones#destroy"

  # Students Routes
  get "/students" => "students#index"

  get "/students/:id" => "students#show"

  post "/students" => "students#create"

  patch "/students/:id" => "students#update"

  delete "/students/:id" => "students#destroy"




  # Skill Routes
  get "/skills/:student_id" => "skills#index"
  get "/skills/show/:id" => "skills#show"
  post "/skills" => "skills#create"
  patch "/skills/:id" => "skills#update"
  delete "/skills/:id" => "skills#destroy"

  # Experience Routes
  get "/experiences/:student_id" => "experiences#index"
  get "/experience/:id" => "experiences#show"
  post "experiences/create" => "experiences#create"
  post "experiences/update/:id" => "experiences#update"
  delete "experiences/delete/:id" => "experiences#delete"

end

