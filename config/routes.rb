Rails.application.routes.draw do

  root 'pages#home'

  get '/home', to: 'pages#home'
  get '/landing', to: 'pages#home'

  resources :recipes do
    post 'like'
  end

  resources :chefs, except: [:new]

  get '/register', to: 'chefs#new'
end
