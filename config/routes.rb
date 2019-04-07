Rails.application.routes.draw do
  
  get "doctors/index" => "doctors#index"
  get "doctors/new" => "doctors#new"
  post "doctors/create" => "doctors#create"
  get "doctors/edit" => "doctors#edit"
  
  get "administrator/index" => "administrator#index"
  
  get "reservations/reserve" => "reservations#reserve"
  get "reservations/accepted_list" => "reservations#accepted"
  post "reservations/create" => "reservations#create"
  
  get "patients/index" => "patients#index"
  get "signup" => "patients#new"
  post "patients/create" => "patients#create"
  get "login" => "patients#login_form"
  post "login" => "patients#login"
  get "mypage" => "patients#mypage"
  get "patients/:id/edit" => "patients#edit"
  post "logout" => "patients#logout"
 
  get "/" => "home#top"
  get "about" => "home#about"
  get "treatment" => "home#treatment"
  get "prophylaxis" => "home#prophylaxis"
  get "information" => "home#information"
  
end
