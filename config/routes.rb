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
  patch "/experiences/:id" => "experiences#update"
  get "/capstones/:id/edit" => "capstones#edit"
  patch "/capstones/:id" => "capstones#update"
  get "/skills/:id/edit" => "skills#edit"
  patch "/skills/:id" => "skills#update"
  get "/educations/:id/edit" => "educations#edit"
  patch "/educations/:id" => "educations#update"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
end

