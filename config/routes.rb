Rails.application.routes.draw do
  root :to => "cities#index"
  # Routes for the Crossfit_box resource:
  # CREATE
  get "/crossfit_boxes/new", :controller => "crossfit_boxes", :action => "new"
  post "/create_crossfit_box", :controller => "crossfit_boxes", :action => "create"

  # READ
  get "/crossfit_boxes", :controller => "crossfit_boxes", :action => "index"
  get "/crossfit_boxes/:id", :controller => "crossfit_boxes", :action => "show"

  # UPDATE
  get "/crossfit_boxes/:id/edit", :controller => "crossfit_boxes", :action => "edit"
  post "/update_crossfit_box/:id", :controller => "crossfit_boxes", :action => "update"

  # DELETE
  get "/delete_crossfit_box/:id", :controller => "crossfit_boxes", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Photo resource:
  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

  # Routes for the Bookmark resource:
  # CREATE
  get "/bookmarks/new", :controller => "bookmarks", :action => "new"
  post "/create_bookmark", :controller => "bookmarks", :action => "create"

  # READ
  get "/bookmarks", :controller => "bookmarks", :action => "index"
  get "/bookmarks/:id", :controller => "bookmarks", :action => "show"

  # UPDATE
  get "/bookmarks/:id/edit", :controller => "bookmarks", :action => "edit"
  post "/update_bookmark/:id", :controller => "bookmarks", :action => "update"

  # DELETE
  get "/delete_bookmark/:id", :controller => "bookmarks", :action => "destroy"
  #------------------------------

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
