Rails.application.routes.draw do
  root 'boards#index'
  resources :boards do
    resources :boards_edit_authorization, only: %i(create)
  end
end
