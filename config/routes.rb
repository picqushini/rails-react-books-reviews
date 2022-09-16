Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :books, param: :slug
      resources :reviews, only: [:create, :destroy]
    end
  end

  # route requests that are not predefined in the api back to the index path
  # this because when we start using react router this would allow us to
  # handle routing through our react component without actually interfereing with the rails routes for our api
  get '*path', to: 'pages#index', via: :all
end
