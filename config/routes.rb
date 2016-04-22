Rails.application.routes.draw do

  devise_for :users

  resources :posts do
    collection do
      get 'search'
    end
    member do
      put "like" => "posts#upvote"
      put "unlike" => "posts#downvote"
    end
    resources :comments
  end
  
  resources :users
  root 'posts#index'
end
