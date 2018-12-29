Rails.application.routes.draw do


  resources :comments
	get 'users/:id/edit', to: 'users#edit'
	patch 'users/:id', to: 'users#update', as: :user


  get 'users', to:'users#index'
  get 'users/new', to: 'users#new'
  post 'users', to: 'users#create'



  get 'users/sign_in', to: 'users#sign_in'
  post 'users/create_session', to: 'users#create_session'





  delete 'posts/:id', to: 'posts#destroy', as: :destroy_post

  patch 'posts/:id', to: 'posts#update', as: :post
 
  get 'posts/:id/edit', to: 'posts#edit'
  get 'posts/new', to: 'posts#new'
  get 'posts', to: 'posts#index'
  post 'posts', to: 'posts#create'

  # get <url>, to '<controller_name>#<action_name>'
    get 'hello_rails', to: 'application#hello_rails'





  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
