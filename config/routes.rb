SpatialSearch::Application.routes.draw do
  post 'listings/search' => "listings#search"
  root :to => "home#index"
  devise_for :users
end
