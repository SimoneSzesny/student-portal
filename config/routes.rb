Rails.application.routes.draw do
  get "/" => "students#index"
  get "/students" => "students#index"
  get "/students/new" => "students#new"
  post "/students" => "students#create"
  get "/students/:id" => "students#show"
  get "/students/:id/edit" => "students#edit"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"
  get "/student_portal" => "user#index"
  get "/students/new" => "student#new"
  get "/students/show" => "student#show"

  get "/experiences/:id/edit" => "experiences#edit"
  get "/capstones/:id/edit" => "capstones#edit"
  get "/skills/:id/edit" => "skills#edit"
  get "/educations/:id/edit" => "educations#edit"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
end

