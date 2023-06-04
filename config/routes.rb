Rails.application.routes.draw do
  resources :instablogs

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }



  root "instablogs#index"
end
