Rails.application.routes.draw do
  resources :users
	get 'welcome/index'
	resources :articles do
		resources :comments
	end
	
	# Standartmäßig wird diese Seite dargestellt, wenn localhost:3000 aufgerufen wird
	root 'welcome#index'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
