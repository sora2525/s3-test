Rails.application.routes.draw do
  resources :images, only: [ :index, :new, :create ]
  root "images#index"
end
