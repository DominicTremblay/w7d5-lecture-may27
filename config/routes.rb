Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/destroy'
  resources :movies do
    resources :reviews, only: [:create, :destroy]
  end
  
  
end
