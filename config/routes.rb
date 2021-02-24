Rails.application.routes.draw do
  get 'posts/new'
  root to: 'site#top'
  get 'homes/top'
  get 'users/verify_age', to: 'users#verify_age'
  post 'users/verified', to: 'users#verified'
  get 'lands/search', to: 'lands#search'
  get 'regions/search', to: 'regions#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
