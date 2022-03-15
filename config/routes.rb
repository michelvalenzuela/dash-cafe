Rails.application.routes.draw do
  resources :sales
  get 'home/dashboard'
  root 'home#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
