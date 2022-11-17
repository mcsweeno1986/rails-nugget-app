Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :categories do
    resources :sub_categories
  end
end


#get "categories", to: "categories#index"
#get "categories/:id", to: "categories#show", as: :category
#get "categories/new", to: "categories#new", as: :new_category
#post "categories", to: "categories#create"
#get "categories/:id/edit", to: "categories#edit", as: :edit_category
#patch "categories/:id", to: "categories#update"
#delete "categories/:id", to: "categories#destroy"
