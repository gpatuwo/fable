Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :destroy]
    resources :vegetables
    resources :recipes do
      resources :taggings, only: [:new]
    end
    
    resources :taggings, only: [:create, :destroy]
  end

  root "static_pages#root"
end
