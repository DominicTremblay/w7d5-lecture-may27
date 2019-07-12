Rails.application.routes.draw do
  get 'reviews/edit'
  get 'reviews/create'
  get 'reviews/destroy'
  resources :movies do 
    resources :reviews, only: [:new, :edit, :create, :destroy]
  end
  
  
end
