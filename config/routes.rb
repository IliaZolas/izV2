Rails.application.routes.draw do
  get 'contact/create'
  devise_for :users

  unauthenticated :user do
    devise_scope :user do
      get '/' => 'pages#home'
      # get "/about" => "pages#about"
      # get "/contact" => "pages#contact"

      resources :blogposts, only: [:show]
      
      resources :contacts, only: [:new, :create]


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

    resources :users do
      resources :projects
    end

    resources :portfolios

    resources :blogposts

    resources :employments

    resources :projects

    resources :dashboard, only: [:index]


  end
end
