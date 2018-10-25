Rails.application.routes.draw do
  resources :degrees
  resources :universities
  resources :applicants

  root "applicants#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
