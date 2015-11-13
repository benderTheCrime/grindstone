Grindstone::Engine.routes.draw do

  # devise_for :authors, class_name: "Grindstone::Author"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :posts do
  end
end
