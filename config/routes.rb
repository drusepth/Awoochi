ActionController::Routing::Routes.draw do |map|
  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "pages", :action => "index"

  map.resources :rewards
  map.resources :unlocks
  map.resources :achievements
  map.resources :users
  map.resources :sites
  map.resources :accounts

  map.connect ':controller/:action'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
