Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  ##GET
  get "/menu_items" => "menu_items#show_all"
  get "/menu_items/:id" => "menu_items#show"
  get "/deals" => "menu_items#deals"
  
  ##POST
  post "/signup" => "users#create"
  post "/login" => "auth#login"
  
  ##PUT
  put "/update_user/:id" => "users#update"
  


end
