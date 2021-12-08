Rails.application.routes.draw do
  get "/capstones/:student_id" => "capstones#index"
  get "/capstones/show/:id" => "capstones#show"
  post "/capstones" => "capstones#create"
  patch "/capstones/:id" => "capstones#update"
  delete "/capstones/:id" => "capstones#destroy"
end
