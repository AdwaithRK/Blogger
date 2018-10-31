Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  root to: redirect('/login')
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

  devise_scope :user do
    get 'sessions' => 'users/sessions#show'
  end

end
