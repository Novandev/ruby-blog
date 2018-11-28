Rails.application.routes.draw do


  resources :articles do  # This loads all of the resources to do crud with articles which can be referenced by : articles
    resources :comments   # comments are now a nested resource for articles, whic means that for routing it can be accessed by url /articles/:id/comments/:id
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'articles#index'   # This sets the base index page to articles index

end

