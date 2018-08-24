Rails.application.routes.draw do
  
  get 'upload' => 'images#new', :as => "upload"
  get 'images/create'
  get 'images/destroy'
  get 'images/index'
  get 'images/edit'
  get 'albums/new'
  get 'albums/create'
  get 'albums/edit'
  get 'albums/update'
  get 'albums/destroy'
  get 'albums/show/:id' => 'albums#show'

  resources :images, :albums

  root 'images#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
