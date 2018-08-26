Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  get 'upload' => 'images#new', :as => "upload"
  get '/news' => 'posts#index'
  resources :images, :albums, :membership, :posts

  root 'images#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  