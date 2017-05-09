Rails.application.routes.draw do
  get "/student_portal" => "user#index"
  get "/students/new" => "student#new"
  get "/students/show" => "student#show"
end
