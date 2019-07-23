Rails.application.routes.draw do
  get 'user/all'  => 'user#all'
  devise_for :users, path_names: { sign_in: "login", sign_out: "logout"}
  resources :todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "todos#index"

end
