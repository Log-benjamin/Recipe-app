Rails.application.routes.draw do
  devise_for :users, path: '',
                     path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret',
                                   confirmation: 'verification', unlock: 'unblock', registration: 'register',
                                  sign_up: 'join' }

  root to: 'recipes#index'

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  id_pattern = /\d+/
  # id must match a number for at least one digit
  constraints(id: id_pattern, user_id: id_pattern, recipe_id: id_pattern, food_id: id_pattern, recipe_food_id: id_pattern) do
    resources :public_recipes, only: %i[index]
    resources :recipe_foods, only: %i[new create edit update destroy]
    get 'general_shopping_list', to: 'shopping_list#index'

    resources :users, only: %i[new create]

    resources :foods, only: %i[index new create destroy]
    resources :recipes, only: %i[index show new create destroy] do
      member do
        patch 'update_privacy', to: 'recipes#updatePrivacy', as: 'update_recipe_privacy'
      end
    end
  end

end
