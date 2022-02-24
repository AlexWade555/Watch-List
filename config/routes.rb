Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'lists', to: 'lists#index', as: :lists
  # get 'lists/new', to: 'lists#new', as: :new_list
  # post 'lists', to: 'lists#create'
  # get 'lists/:id', to: 'lists#show', as: :list
  # get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new'
  # post 'lists/:list_id/bookmarks', to: 'bookmarks#create'
  # delete 'bookmarks/:list_id', to: 'lists#destroy'

  resources :lists, only: [:index, :new, :show, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
