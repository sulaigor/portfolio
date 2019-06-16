Rails.application.routes.draw do

  root 'home#index'
  get 'o-me', to: 'about#index', as: 'about_me'

end
