Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "sessions#new"
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get "welcome", to: 'welcome#home'
  delete 'logout', to: "sessions#destroy"
  get 'logout', to: "sessions#destroy"
  get "chatroom", to: "chatroom#index"
  post 'message', to: "messags#create"
end
