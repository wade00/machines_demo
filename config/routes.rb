Rails.application.routes.draw do
  root 'machines#index'
  resources :machines, except: [:show]
end
