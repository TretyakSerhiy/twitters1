Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'devise/registrations#new'
  get 'log_in' => 'devise/sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
