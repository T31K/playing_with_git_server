Rails.application.routes.draw do
  devise_for :users
  get 'render/index'
  root 'render#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # LEVELS
  get 'levels', to: "levels#index", as: :levels
  get 'level/:level_id', to: "levels#show", as: :level
end
