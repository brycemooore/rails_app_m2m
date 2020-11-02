Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :powers, :heros 

  get '/heros/:id/select-power', to: 'heros#power_select', as: 'power_select'

  # get '/heros', to: 'heros#index'
  # get '/heros/new', to: 'heros#new'
  # get '/heros/:id', to: 'heros#show', as: 'hero'
  # post 'heros', to: 'heros#create'

  get '/', to: 'application#home'
  get '/about', to: 'application#about'
end
