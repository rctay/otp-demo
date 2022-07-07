Rails.application.routes.draw do
  post 'otps/', to: 'otps#create'
  get 'otps/verify', to: 'otps#verify'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
