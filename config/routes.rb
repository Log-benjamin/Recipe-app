Rails.application.routes.draw do
  devise_for :users, path: '',
                     path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret',
                                   confirmation: 'verification', unlock: 'unblock', registration: 'register',
                                  sign_up: 'join' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  
  root to: 'recipes#index'

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  id_pattern = /\d+/
  # id must match a number for at least one digit
  constraints(id: id_pattern, user_id: id_pattern, recipe_id: id_pattern, food_id: id_pattern, recipe_food_id: id_pattern) do
    get 'public_recipes', to: 'public_recipes#index'
    get 'generate_shopping_list', to: 'shopping_list#index'

    resources :public_recipes, only: %i[index show]
    resources :recipe_foods, only: %i[update destroy]

    resources :users, only: %i[new create] do
      resources :shopping_list, only: %i[index]
    end

    resources :foods, only: %i[index show new create destroy]
    resources :recipes, only: %i[index show new create destroy] do
      resources :recipe_foods, only: %i[index new create update]
    end
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
