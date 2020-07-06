Rails.application.routes.draw do
  resources :journeys
  devise_for :users
  resources :users

  authenticated :user do
    root :to => "journeys#index"
  end

  root :to => redirect("/users/sign_in")

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
