Rails.application.routes.draw do
  root 'namas#index'

  resources :namas, only: %i[index create]
end
