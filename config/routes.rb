Rails.application.routes.draw do
  get 'csrf_safe/index'
  get 'csrf_compromised/index'
  get 'csrf_compromised/transfer_funds'
  post 'csrf_compromised/transfer_funds'
  get 'csrf_safe/transfer_funds'
  post 'csrf_safe/transfer_funds'
  post 'csrf_compromised/reset_data'
  get 'sqlinjection/safe'
  get 'sqlinjection/compromised'
  get 'sqlinjection/get_director_movies_compromised'
  get 'sqlinjection/get_director_movies_safe'
  get 'sqlinjection/get_movies_genre_compromised'
  get 'sqlinjection/get_movies_genre_safe'
  get 'home/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
