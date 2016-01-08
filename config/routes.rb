Rails.application.routes.draw do
  root 'comments#view'
  resources :comments, only: [:index, :show, :new, :create, :update, :edit, :destroy]
  get "/view" => "comments#view"
end
