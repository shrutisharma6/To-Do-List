Rails.application.routes.draw do
   
  devise_for :users
  resources :users
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  devise_scope :user do
    delete "/users/sign_out", as: "sign_out", to: "devise/sessions#destroy"
  end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
    root "home#index"

    resources :tasks
end
