Rails.application.routes.draw do
  get 'posts/' => 'posts#index'
  get 'posts/:id' => 'posts#show'
  post 'posts/add' => 'posts#add'
  delete 'posts/:id' => 'posts#delete'
  get 'users/' => 'users#index'
  get 'users/:id' => 'users#show'
  post 'users/add' => 'users#add'
  delete 'users/:id' => 'users#delete'
  patch 'users/update' => 'users#update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
