Ticketee::Application.routes.draw do
  root :to => "projects#index"
  resources :projects do
    resources :tickets
  end
  resources :users
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
end
