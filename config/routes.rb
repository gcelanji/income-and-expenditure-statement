Rails.application.routes.draw do
  devise_for :users
  resources :i_and_e_statements

  root "i_and_e_statements#index"
end
