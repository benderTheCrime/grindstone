Grindstone::Engine.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :posts do
  end
end