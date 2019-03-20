Rails.application.routes.draw do
  root 'boards#index'
  get 'boards/new'
  get 'boards/create'
  get 'boards/show'
  get 'boards/edit'
  get 'boards/update'
  get 'boards/destroy'
end
