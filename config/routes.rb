Rails.application.routes.draw do
  root 'comments#index'
  resources :comments, only: [:index, :show, :new, :create, :update, :edit, :destroy]
end
