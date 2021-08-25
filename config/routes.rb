Rails.application.routes.draw do
  devise_for :users

  unauthenticated :user do
    devise_scope :user do
      get '/' => 'pages#home'
      # get "/about" => "pages#about"
      # get "/contact" => "pages#contact"
    end
  end

  authenticated :user do
    root 'dashboard#index'

    resources :user do
      resources :blogpost
    end

  end
end
