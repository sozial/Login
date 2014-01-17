Rails3MongoidDevise::Application.routes.draw do  
  resources :blogs

  root 'users#index'
  match '/blogs' => "blogs#index", via: [:get, :post]
  devise_for :users
  resources :users
	
end
