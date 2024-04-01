Rails.application.routes.draw do
  root        to: 'home#index'
  get '/movies', to: 'home#movies'
  get '/genders', to: 'home#genders'
  get '/directors', to: 'home#directors'
  resources :movies, only: [:show, :new, :create, :edit, :update]
  resources :genders, only: [:show, :new, :create, :edit, :update]
  resources :directors, only: [:show, :new, :create, :edit, :update]
end
