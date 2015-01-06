Rails.application.routes.draw do
  resources :users, only: [:index, :destroy, :create, :update, :show] do
      resources :contacts, only: [:index]
      resources :comments
    end

  resources :contacts, only: [:destroy, :create, :update, :show] do
    resources :comments
  end

  resources :contact_shares, only: [:create, :destroy]
end
