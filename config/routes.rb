Rails.application.routes.draw do
  root 'addresses#index', as: 'home'

  get 'about' =>"pages#about"

  resources :addresses
end
