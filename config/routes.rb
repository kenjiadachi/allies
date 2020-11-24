Rails.application.routes.draw do

  # 下記はresourcesに書き換えたコード(正常に動作しない)

  # resources :users do
  #   resources :posts
  # end

  # resources :login do
  #   member do
  #     get 'users#login_form'
  #     get 'users#login'
  #   end
  # end

  # resources :logout do
  #   member do
  #     get 'users#logout'
  #   end
  # end

  # resources :users/:id/update do
  #   member do
  #     get 'users#update'
  #   end
  # end

  #下記はresourcesに書き換える前のコード(正常に動作する)

  get "login" => "users#login_form"
  post "login" => "users#login"
  get "logout" => "users#logout"

  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"

  # get 'users/index'
  # get "/" => "posts#index"
  # get "posts/new" => "posts#new"
  # get "posts/:id" => "posts#show"
  # post "posts/create" => "posts#create"
  # get "posts/:id/edit" => "posts#edit"
  # post "posts/:id/update" => "posts#update"
  # get "posts/:id/destroy" => "posts#destroy"


  resources :posts

  root to: 'posts#index'
  # resources :users, only: [:index, :show, :new, :update, :edit, :create] do
  #   collection do
  #     get 'login'
  #     post 'login'
  #     get 'logout'
  #   end
  # end
end
