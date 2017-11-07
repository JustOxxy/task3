Rails.application.routes.draw do

  root             'static_pages#home'

  get 'about'   => 'static_pages#about'

  get 'contact' => 'static_pages#contact'

  devise_for :users

  resources :users, only: [:show, :edit]
  # get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
