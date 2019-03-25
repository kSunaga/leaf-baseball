Rails.application.routes.draw do
  devise_for :users
  get 'offers/new'
  root 'boards#index'
  resources :boards do
    resources :boards_edit_authorization, only: %i(create)
    resources :offers, only: %i(new create)
  end
  resources :templates
end
