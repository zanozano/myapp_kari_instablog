Rails.application.routes.draw do
  resources :instablogs
  resources :comments, shallow: true
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }



  root "instablogs#index"
end
