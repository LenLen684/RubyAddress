Rails.application.routes.draw do
  root 'addresses#index', as: 'home'
  resources :addresses
end