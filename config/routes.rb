Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/menu_items" => "menu_items#show_all"
  get "/menu_items/:id" => "menu_items#show"
  get "/status" => "application#show_status"
  get "/user" => "application#current_user"
  post "/signup" => "users#create"
  post "/login" => "auth#login"
  

end
