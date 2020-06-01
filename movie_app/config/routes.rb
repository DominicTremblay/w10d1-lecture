Rails.application.routes.draw do
  # get 'reviews/create'
  # get 'reviews/destroy'
  # get 'movies/index'
  # get 'movies/new'
  # get 'movies/create'
  # get 'movies/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :movies, except: [:edit, :update, :destroy] do
    resources :reviews, only: [:create, :destroy]
  end
end
