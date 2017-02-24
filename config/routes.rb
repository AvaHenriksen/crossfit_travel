Rails.application.routes.draw do
  # Routes for the Food_option resource:
  # CREATE
  get "/food_options/new", :controller => "food_options", :action => "new"
  post "/create_food_option", :controller => "food_options", :action => "create"

  # READ
  get "/food_options", :controller => "food_options", :action => "index"
  get "/food_options/:id", :controller => "food_options", :action => "show"

  # UPDATE
  get "/food_options/:id/edit", :controller => "food_options", :action => "edit"
  post "/update_food_option/:id", :controller => "food_options", :action => "update"

  # DELETE
  get "/delete_food_option/:id", :controller => "food_options", :action => "destroy"
  #------------------------------

  # Routes for the City resource:
  # CREATE
  get "/cities/new", :controller => "cities", :action => "new"
  post "/create_city", :controller => "cities", :action => "create"

  # READ
  get "/cities", :controller => "cities", :action => "index"
  get "/cities/:id", :controller => "cities", :action => "show"

  # UPDATE
  get "/cities/:id/edit", :controller => "cities", :action => "edit"
  post "/update_city/:id", :controller => "cities", :action => "update"

  # DELETE
  get "/delete_city/:id", :controller => "cities", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
