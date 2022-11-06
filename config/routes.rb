Rails.application.routes.draw do
  get 'csrf_safe/index'
  get 'csrf_compromised/index'
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
