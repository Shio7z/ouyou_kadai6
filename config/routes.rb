Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  get '/abouts' => "homes#about", as: 'abouts'
  
  resources :users, only: [:index,:show,:edit,:update]

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

  
end