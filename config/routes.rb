Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resources :services do
    resources :appointments, only: [:new, :create]
  end

  resources :appointments, except: [:new, :create]
end
