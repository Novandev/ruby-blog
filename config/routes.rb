Rails.application.routes.draw do

  resources :articles   # This loads all of the resources to do crud with articles which can be referenced by : articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'articles#index'   # This sets the base index page to articles index

end

