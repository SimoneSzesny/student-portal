Rails.application.routes.draw do
  get "/students" => "students#index"
  get "/students/new" => "student#new"
  get "/students/show" => "student#show"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
