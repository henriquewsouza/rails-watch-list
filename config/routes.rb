Rails.application.routes.draw do
  resources :movies, only: [:index, :show] do
    resources :bookmarks, only: [:create]
  end

  resources :lists, except: [:update, :edit] do
    resources :bookmarks, only: [:create]
  end

  resources :bookmarks, only: [:destroy]
end
