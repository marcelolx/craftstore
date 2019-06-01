Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  devise_for :usuarios, controllers: {
    sessions: 'usuarios/sessions',
    registrations: 'usuarios/registrations',
    passwords: 'usuarios/passwords'
  }
  #devise_for :users
  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
