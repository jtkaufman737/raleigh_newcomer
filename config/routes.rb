Rails.application.routes.draw do
  resources :facts

  root 'welcome#index'
  get "/facts", to: "facts#index"
  get "/facts/:id", to: "facts#show"
  get "/facts/new", to: "facts#new"
  post "/facts", to: "facts#create"  # usually a submitted form
  get "/facts/:id/edit", to: "facts#edit"
  patch "/facts/:id", to: "facts#update" # usually a submitted form
  delete "/facts/:id", to: "facts#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
