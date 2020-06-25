Rails.application.routes.draw do
  devise_for :users
  resources :users do
    member do
      get :follow, :follower
    end
  end

  resources :books do
  resource :favorites, only: [:create, :destroy]
  resources :book_comments, only: [:create, :destroy]
end
post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す
  root 'home#top'
  get 'home/about' => 'home#about'
end
