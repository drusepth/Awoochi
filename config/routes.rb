ActionController::Routing::Routes.draw do |map|
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
