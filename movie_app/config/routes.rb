Rails.application.routes.draw do
  
  get 'reviews/create'
  get 'reviews/delete'
  resources :movies, only: [:index, :new, :create, :show] do
    resources :reviews
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
