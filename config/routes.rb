Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users, controllers: { sessions: 'users/sessions',
    registrations: 'users/registrations'} 
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
