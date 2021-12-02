Rails.application.routes.draw do
  root 'addresses#index'

  get 'about' =>"pages#about"
end
