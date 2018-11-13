Rails.application.routes.draw do
  get 'articles/articles'

  resources :articles   # This loads all of the resources to do crud with articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'articles#articles'
end