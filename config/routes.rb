Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :destroy]
    resources :vegetables
    resources :recipes
    resources :taggings, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end

  root "static_pages#root"
end
