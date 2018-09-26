Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}, controllers: { registrations: 'registrations' }
  post 'payments/create'
  resources :users
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :products do
    resources :comments
  end
  post 'simple_pages/thank_you'
  get '/contact', to: 'simple_pages#contact'
  get '/about', to: 'simple_pages#about'
  get '/', to: 'simple_pages#index'
  root 'simple_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
