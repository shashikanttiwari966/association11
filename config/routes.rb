Rails.application.routes.draw do
	root 'posts#index'
		get 'users/login', to: 'users#login'
		resources :posts
		resources :users
end
