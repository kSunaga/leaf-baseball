Rails.application.routes.draw do
  get 'offers/new'
  root 'boards#index'
  resources :boards do
    resources :boards_edit_authorization, only: %i(create)
  end
end
