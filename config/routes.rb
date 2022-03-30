# frozen_string_literal: true

Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
        get :complete
      end
    end
  end

  root 'todo_lists#index'
end

# Defines the root path route ("/")
# root "articles#index"
