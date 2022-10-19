Rails.application.routes.draw do
  # get 'signup/create'
  namespace :api do
    namespace :v1 do
      resources :records
      resources :artists
    end
  end

  root "home#index"
  post "refresh", controller: :refresh, action: :create
  post "signin", controller: :signin, action: :create
  post "signin", controller: :signin, action: :destroy
  post "signup", controller: :signup, action: :create
end
