Rails.application.routes.draw do
  resources :locations

  root 'machines#index'
  resources :machines, except: [:show]
end
