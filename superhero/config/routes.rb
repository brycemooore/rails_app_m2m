Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :powers, :superheros

  get '/', to: 'application#home'
  get '/about', to: 'application#about'
end
