Rails.application.routes.draw do
  devise_for :users

  unauthenticated :user do
    devise_scope :user do
      get '/' => 'pages#home'
      # get "/about" => "pages#about"
      # get "/contact" => "pages#contact"

      resources :blogposts, only: [:show]

    end
  end

  authenticated :user do
    root 'dashboard#index'

    resources :users do
      resources :blogposts
    end

    resources :users do
      resources :employments
    end

    resources :users do
      resources :portfolios
    end

    resources :portfolios

    resources :blogposts

    resources :employments




  end
end
