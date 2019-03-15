Rails.application.routes.draw do
  devise_for :docs
  devise_for :consumers
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root "doctors#index"
  
  resources :patients
  resources :doctors do
    resources :appointments, only: [:index,:new, :create, :destroy]
  end

  resources :patients do
    resources :notes 
  end
end