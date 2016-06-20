Rails.application.routes.draw do
  root 'pages#index'       # when we're specifying where the route should go, the first thing is the controller, and the second part is the method.

  #get 'pages/about'    <-- these are the default routes. we should streamline unique resource locators as follows:
  get 'about', to: 'pages#about'
  #note: the left hand side contains the HTTP request (/about), and the right side is the action (telling the pages controller to go the about method)

  get "/characters/:page", to: "characters#show", as: "characters"

  # get "/characters", to: "characters#show"

  #get 'pages/faq'
  get 'faq', to: 'pages#faq'

  get 'contact', to: 'pages#contact'

  # get '/crew/:id', to: "crew#show", as: "crew" # as: creates a prefix/path, so that you

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
