Rails.application.routes.draw do
  # POKEMON CONTROLLER
  get "/pokemon/all", to: "pokemon#get_all"
  get "/pokemon/:id", to: "pokemon#get_by_id"
  get "/pokemon/search/:name", to: "pokemon#search_by_name"
  get "/pokemon/type/:type", to: "pokemon#search_by_type"

  # ITEM CONTROLLER
  get "/item/category/:category", to: "item#search_by_category"
  get "/item/search/:name", to: "item#search_by_name"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
