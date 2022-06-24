Rails.application.routes.draw do
  devise_for :users
  # added route to carry out sign out operation

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  
  resources :phonebooks
  #get 'home/index'
  get 'home/about'
  #root 'home#index'
  root 'phonebooks#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
