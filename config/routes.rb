Rails.application.routes.draw do
  devise_for :users, skip: :all

  namespace :api do
    post 'login', to: 'users#login'
    get 'feed', to: 'scores#user_feed'
    post 'user_scores', to: 'scores#user_scores'
    post 'user', to: 'user#user_name'
    resources :scores, only: %i[create destroy]
  end
end
