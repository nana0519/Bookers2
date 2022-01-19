Rails.application.routes.draw do
  root to: "homes#top"
  get "home/about" => "homes#about", as: ""
  resources :books, only:[:index, :show, :edit]
  resources :users, only:[:index, :show]
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
