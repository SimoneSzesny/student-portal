Rails.application.routes.draw do
  get "/student_portal" => "user#index"
  get "/students/new" => "student#new"
  get "/students/show" => "student#show"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
